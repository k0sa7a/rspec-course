require_relative '../lib/card.rb'

RSpec.describe Card do
  before do
    @card = Card.new("Three", "Clubs")
  end

  it 'has a value' do
    expect(@card.value).to eq("Three")
  end

  it 'has a suit' do
    expect(@card.suit).to eq("Clubs")
  end
end
