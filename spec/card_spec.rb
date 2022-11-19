require_relative '../lib/card.rb'

RSpec.describe 'Card' do
  it 'has a type' do
    card = Card.new("Three of clubs")
    expect(card.type).to eq("Three of clubs")
  end
end
