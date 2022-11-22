RSpec.describe 'not_to method' do
  it 'checks that two values do not match (for eq matcher)' do
    expect(10).not_to eq(19999)
    expect('Hi there').not_to eq('Bye, see you')
  end
end
