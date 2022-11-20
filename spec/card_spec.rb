require_relative '../lib/card'

RSpec.describe Card do
  let(:card) { Card.new('Three', 'Clubs') }

  it 'has a value and that value can change' do
    expect(card.value).to eq('Three')
    card.value = 'Four'
    expect(card.value).to eq('Four'), "ERROR: the value was incorrect. Should be 'Four' and it was #{card.value}"
  end

  it 'has a suit' do
    expect(card.suit).to eq('Clubs')
  end
end
