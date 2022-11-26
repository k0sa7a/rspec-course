RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double

    allow(calculator).to receive(:add).and_return(15)

    expect(calculator.add).to eq(15)
    expect(calculator.add(-100, 100, 1, 4, "hello")).to eq(15)
    expect(calculator.add(555)).to eq(15)
    expect(calculator.add("random")).to eq(15)
  end

  it 'can stub one or more methods of a real object' do
    arr = [1, 2, 3]

    expect(arr.sum).to eq(6)
    allow(arr).to receive(:sum).and_return(10)

    expect(arr.sum).to eq(10)
  end

  it 'can return multiple values in sequence' do
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)

    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to eq(nil)
    expect(mock_array.pop).to eq(nil)
    expect(mock_array.pop).to eq(nil)
  end
end
