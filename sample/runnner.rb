require 'parallel_runner'
require 'mechanize'

list = ["http://www.yahoo.co.jp",
        "http://www.google.co.jp",
        "http://twitter.com/",
        "http://www.hatena.ne.jp/"]

agent = Mechanize.new
Runner.parallel(list) do |url|
  site = agent.get(url)
  html = site.root.xpath("//title")[0].inner_html
  p html
end