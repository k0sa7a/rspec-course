RSpec.describe 'contain exactly matcher' do
  subject{ [1, 2, 3] }

  it 'checks if all elements are inside the subject' do
    expect(subject).to contain_exactly(1,2,3)
    expect(subject).to contain_exactly(3,1,2)
  end

  describe 'short syntax' do
    subject {[55, 69, 56]}
    it {is_expected.to contain_exactly(56, 69, 55)}
  end
end
