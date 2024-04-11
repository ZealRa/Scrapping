require 'nokogiri'
require 'open-uri'

doc_HTML = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

rows = doc_HTML.xpath("//tr[contains(@class, 'cmc-table-row')]")

result = {}


rows.each do |row|

  symbol = row.xpath(".//td[contains(@class, 'symbol')]").text.strip

  price = row.xpath(".//td[5]").text.strip

  result[symbol] = price
end

puts result
