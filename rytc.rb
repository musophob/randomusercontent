require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'securerandom'

# SUCCESS random yt urls
#gen = SecureRandom.urlsafe_base64(8)
#randomurl = "https://gdata.youtube.com/feeds/api/videos/" + gen + "/comments"
#puts randomurl

# SUCCESS comment getting
#page = Nokogiri::XML(open("https://gdata.youtube.com/feeds/api/videos/a79t3s5yig8/comments"))
#comment = page.css("content")[0].text
#puts comment

# check if the string is a working youtube video
begin # if valid url is generated will return raw XML
  gen = SecureRandom.urlsafe_base64(8)
  randomurl = "https://gdata.youtube.com/feeds/api/videos/#{gen}/comments"  # api req for with random video id
  #randomurl = "https://gdata.youtube.com/feeds/api/videos/HjKcCGaCiu0/comments"
  url = Nokogiri::XML(open(randomurl))
  puts url
rescue OpenURI::HTTPError
  puts "#{randomurl} is not a valid youtube."
  retry
end


# see http://blog.jerodsanto.net/2008/08/ruby-to-the-rescue/

# 
# hit gdata.youtube.com with request for xml
#
# generate a random number to select comment and parse out comment from xml
#
# return the the text
