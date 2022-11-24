RSpec.describe 'change matcher' do
  subject {[1, 2, 3, 4]}

  it 'checks that a method changes an object state' do
    expect{ subject.push(5) }.to change{ subject.length }.from(4).to(5)
    expect{ subject.push(6) }.to change{ subject.length }.by(1)
  end

  it 'checks that this works with negative value too' do
    expect{ subject.pop }.to change { subject.length }.by(-1)
  end
end
