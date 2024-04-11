require 'nokogiri'
require 'open-uri'


  doc_HTML = Nokogiri::HTML(URI.open("https://www.aude.fr/annuaire-mairies-du-departement"))

  puts doc_HTML