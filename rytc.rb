require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'securerandom'

# test random yt urls
gen = SecureRandom.urlsafe_base64(8)
url = "https://gdata.youtube.com/feeds/api/videos/" + gen + "/comments"
puts url

# test comment getting
page = Nokogiri::XML(open("https://gdata.youtube.com/feeds/api/videos/a79t3s5yig8/comments"))
comment = page.css("content")[0].text
puts comment

# test check if the string is a working youtube video


begin # fail test
  url = Nokogiri::XML(open("https://gdata.youtube.com/feeds/api/videos/T-4FvTDo5pg/comments"))
rescue OpenURI::HTTPError
  puts "#{url} is not a valid youtube video."
end

# see http://blog.jerodsanto.net/2008/08/ruby-to-the-rescue/

# 
# hit gdata.youtube.com with request for xml
#
# generate a random number to select comment and parse out comment from xml
#
# return the the text
