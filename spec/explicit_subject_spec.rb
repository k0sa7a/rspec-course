RSpec.describe Hash do
  subject(:something) do
    {one: 1, two: 2}
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    # works with the custom name as well
    expect(something.length).to eq(2)
  end

  # works with nested example group too
  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      # works with the custom name as well
      expect(something.length).to eq(2)
    end
  end

end
