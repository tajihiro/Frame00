require 'anemone'

Anemone.crawl('http://www.whoocus.com/blog', :depth_limit => 1) do |anemone|
  anemone.on_every_page do |page|
    puts page.url
  end
end