RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect(4).to be_truthy
    expect([]).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil
    hash = {a: 100, b: 1000}
    expect(hash[:c]).to be_nil
  end
end
