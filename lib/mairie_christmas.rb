require 'nokogiri'
require 'open-uri'

def get_addresses
sleep(3)
  doc_HTML = Nokogiri::HTML(URI.open("https://www.aude.fr/annuaire-mairies-du-departement"))

  cities_names = doc_HTML.xpath("//h2[@class='directory-block__title composite-link__title']").map(&:text)

  cities_mails = doc_HTML.xpath("//a[contains(@href, 'mailto')]")

  cities_hash = {}
  cities_names.each_with_index do |name, index|
    email = cities_mails[index] ? cities_mails[index]['href'].gsub("mailto:", "") : "Email not found"
    cities_hash[name] = email
  end

  return cities_hash
end

