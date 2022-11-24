RSpec.describe 'comparison matchers' do
  it 'allows for comparison with the Ruby operators' do
    expect(10).to be > 5
    expect(1).to be < 50

    expect(100).to be >= 100
    expect(40).to be <= 99
  end

  # reminder for one liner syntax
  describe 100 do
    it {is_expected.to be > 90}
    it {is_expected.not_to be <= 1}
  end

end
