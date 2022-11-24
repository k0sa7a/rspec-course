RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with normal Ruby methods' do
    expect((16/2).even?).to eq(true)
  end

  it 'can be tested with rspec predicate matchers' do
    expect(16/2).to be_even
    expect({}).to be_empty
    expect(313).to be_odd
  end
end
