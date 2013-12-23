require 'rubygems'
require 'nokogiri'
require 'open-uri'

# test
page = Nokogiri::XML(open("https://gdata.youtube.com/feeds/api/videos/a79t3s5yig8/comments"))
comment = page.css("content")[0].text
puts comment

# generate a random string matching youtube url format
#
# check if the string is a working youtube video
# 
# hit gdata.youtube.com with request for xml
#
# generate a random number to select comment and parse out comment from xml
#
# return the the text
