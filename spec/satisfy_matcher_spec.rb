RSpec.describe 'satsify matcher' do
  subject {'racecar'}

  it 'is a palindrome' do
    expect(subject).to satisfy { |val| val == val.reverse}
  end

  it 'accepts a custom error message' do
    expect(subject).to satisfy('be a palindrome') do |val|
      val == val.reverse
    end
  end
end
