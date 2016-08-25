require 'anemone'

Anemone.crawl('https://www.amazon.co.jp/gp/bestsellers/books/', :depth_limit => 1) do |anemone|
  anemone.focus_crawl do |page|
    page.links.keep_if { |link|
      link.to_s.match(/\/gp\/bestsellers\/books\/.?/)
    }
  end

  anemone.on_every_page do |page|
    puts page.url
  end

end