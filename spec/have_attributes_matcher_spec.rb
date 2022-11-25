require_relative '../lib/wrestler'

RSpec.describe 'have attributes matcher' do
  describe Wrestler.new('Kosata', 'Sucker punch') do
    it 'checks if object has the appropriate attributes and their values' do
      expect(subject).to have_attributes({name: 'Kosata', finishing_move: 'Sucker punch'})
      expect(subject).to have_attributes(name: 'Kosata')
    end

    it { is_expected.to have_attributes(name: 'Kosata')}
  end
end
