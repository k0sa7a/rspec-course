RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 22
  end

  it {is_expected.to be_odd.and be > 22}
end

RSpec.describe [:one, :two, :three] do
  it 'can test for multiple possibilities' do
    expect(subject.sample).to eq(:one).or eq(:two).or eq(:three)
  end
end
