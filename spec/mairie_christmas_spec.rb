require './lib/mairie_christmas.rb'

describe "get_addresses" do
  it "returns an hash with the key is the city name and the value is the email" do
    addresses = get_addresses
    expect(addresses).to be_a(Hash)

    addresses.each do |city, email|
      expect(city).to be_a(String)
      expect(email).to be_a(String)
    end
  end
end