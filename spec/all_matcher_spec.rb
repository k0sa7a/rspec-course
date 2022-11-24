RSpec.describe 'all matcher' do
  it 'can be done in normal Ruby code' do
    [5, 99, 133].each do |element|
      expect(element).to be_odd
    end
  end

  it 'allows for aggegate checks' do
    expect([5, 7, 133]).to all(be_odd)
    expect([6, 8, 134]).to all(be_even)
    expect([2, 2, 2]).to all(eq(2))
  end

  describe [5, 7, 9] do
    it {is_expected.to all(be_odd)}
  end
end
