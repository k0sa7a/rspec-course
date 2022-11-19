require_relative '../lib/card.rb'

RSpec.describe Card do
  it 'has a value' do
    card = Card.new("Three", "Clubs")
    expect(card.value).to eq("Three")
  end

  it 'has a suit' do
    card = Card.new("Three", "Clubs")
    expect(card.suit).to eq("Clubs")
  end
end
