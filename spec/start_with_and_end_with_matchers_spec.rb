RSpec.describe 'start_with and end_with matchers' do
  describe 'special' do
    it 'should check for substring at start or end' do
      expect(subject).to start_with('spe')
      expect(subject).to end_with('ial')
    end
    it {is_expected.to start_with('spec')}
  end

  describe [1, 2, 3, 4, 5] do
    it 'should check first or last elements in an array' do
      expect(subject).to start_with(1, 2)
      expect(subject).to end_with(4, 5)
    end
  end
end
