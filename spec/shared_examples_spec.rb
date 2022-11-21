RSpec.shared_examples 'a Ruby object with length method that returns 3' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a Ruby object with length method that returns 3'
end

RSpec.describe Hash do
  subject { {one: 1, twp: 2, three: 3} }
  include_examples 'a Ruby object with length method that returns 3'
end
