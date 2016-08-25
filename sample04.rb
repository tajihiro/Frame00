require 'open-uri'
require 'nokogiri'

# open("http://www.whoocus.com/") {|f|
#   f.each_line{|line| p line}
# }

html = Nokogiri.HTML(open("http://www.whoocus.com/blog"))

html.css('a').each do |element|
  puts element[:href]
end