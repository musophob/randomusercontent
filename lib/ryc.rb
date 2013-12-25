require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Ryc
  def self.go
    begin
      # get randomyoutubecomment.com
      page = Nokogiri::HTML(open("http://www.randomyoutubecomment.com/"))

      # get the comment
      comment = page.css("div a p")[0].text
      # @ filter out strange characters

      # get the author
      author = page.css("div a + p")[0].text

      # get the video url
      vidurl = page.css("div p:nth-child(4) a")[0]["href"]
    
      # output the comment
      puts comment
      puts author
      puts vidurl

    rescue OpenURI::HTTPError

      puts "Couldn't get the page - OpenURL::HTTPError"
      puts "Trying again..."
      retry

    end
  end
end
