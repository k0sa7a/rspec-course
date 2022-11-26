RSpec.describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    fake_arr = double # we emmulate [1, 2, 3]

    allow(fake_arr).to receive(:first).with(no_args).and_return(1)
    allow(fake_arr).to receive(:first).with(1).and_return([1])
    allow(fake_arr).to receive(:first).with(2).and_return([1, 2])
    allow(fake_arr).to receive(:first).with(be >= 3).and_return([1, 2, 3])

    expect(fake_arr.first).to eq(1)
    expect(fake_arr.first(1)).to eq([1])
    expect(fake_arr.first(2)).to eq([1, 2])
    expect(fake_arr.first(3)).to eq([1, 2, 3])
    expect(fake_arr.first(1999)).to eq([1, 2, 3])
  end
end
