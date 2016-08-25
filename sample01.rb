puts "--文字情報--"
j = "るびぃ"
p j.encoding
p j.length
p j.bytesize

puts "--正規表現--"
result = "abcdefg123" =~ /\d+/
p result

html = <<HTML
<p>
  2016年8月19日
  <a href="http://www.whoocus.com/blog">Whoocus</a>
</p>
<p>
  2016年8月20日
  <a href="http://www.whoocus.com/blog">たぢ</a>
</p>
HTML

dates = html.scan(/(\d+)年(\d+)月(\d+)日$/)
# puts "--日付--"
# p dates

links = html.scan(%r{<a href="(.+?)">(.+?)</a>})
# puts "--リンク--"
# p links

puts "--結合--"
parse_str = dates.zip(links)
p parse_str

file = "sample01.html"
fhtml = open(file, &:read)
fdates = fhtml.scan(/(\d+)年(\d+)月(\d+)日$/)
flinks = fhtml.scan(%r{<a href="(.+?)" ?>(.+?)</a>})
puts "--ファイル情報--"
finfo = fdates.zip(flinks)
p finfo