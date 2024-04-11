require_relative '../lib/dark_trader.rb'

describe 'get_crypto'do
  it 'returns a non-empty hash' do
  result = get_crypto
  expect(result).to be_a(Hash)
  expect(result).not_to be_empty
  end
end

describe 'get_crypto'do
  it "should include the Bitcoin crypto" do
    result = get_crypto
    expect(result.has_key? "BTC").to eq (true)
  end
end