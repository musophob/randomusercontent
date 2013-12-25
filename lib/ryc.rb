require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Ryc

  def self.comment
    begin
      page = Nokogiri::HTML(open("http://www.randomyoutubecomment.com/"))
      thecomment = page.css("div a p")[0].text
      puts thecomment
    rescue OpenURI::HTTPError
      puts "Couldn't get the page - OpenURL::HTTPError"
      puts "Trying again..."
      retry
    end
  end

  def self.author
    begin
      page = Nokogiri::HTML(open("http://www.randomyoutubecomment.com/"))
      theauthor = page.css("div a + p")[0].text
      puts theauthor
    rescue OpenURI::HTTPError
      puts "Couldn't get the page - OpenURL::HTTPError"
      puts "Trying again..."
      retry
    end
  end

  def self.vidurl
    begin
      page = Nokogiri::HTML(open("http://www.randomyoutubecomment.com/"))
      thevidurl = page.css("div p:nth-child(4) a")[0]["href"]
      puts thevidurl
    rescue OpenURI::HTTPError
      puts "Couldn't get the page - OpenURL::HTTPError"
      puts "Trying again..."
      retry
    end
  end

end
