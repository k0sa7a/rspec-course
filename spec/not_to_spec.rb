RSpec.describe 'not to matcher reminder' do
  it 'checks for the inverse of a matcher' do
    expect(4).not_to eq(10)
    expect("aaa").not_to equal("aaa")
    expect(10).not_to be_odd
    expect(nil).not_to be_truthy
    expect{11 / 19}.not_to raise_error
  end
end
