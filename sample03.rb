require 'cgi'
require 'open-uri'

page_source = open("http://www.whoocus.com/blog/", "r:UTF-8", &:read)
dates = page_source.scan(%r{<span class="date">(\d+)年 ?(\d+)月 ?(\d+)日 ?</span>})

p dates
# p dates.length
