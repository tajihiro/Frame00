require 'cgi'
require 'open-uri'

page_source = open("http://www.whoocus.com/blog/", "r:UTF-8", &:read)
#page_source = open("http://crawler.sbcr.jp/samplepage.html", "r:UTF-8", &:read)
#page_source = open("sample02.html", &:read)
dates = page_source.scan(%r{(\d+)年 ?(\d+)月 ?(\d+)日 ?<br />})
links = page_source.scan(%r{^<a href="(.+?)">(.+?)</a><br />})

# p dates
# p dates.length
# p links
# p links.length

page_info = links.zip(dates).map{|(url, title), ymd|[CGI.unescapeHTML(url), CGI.unescapeHTML(title), Time.local(*ymd)]}
#p page_info

page_info.each do |url, title, ymd|
  puts url
  puts title
  puts ymd
  puts "\n"
end
