RSpec.describe 'nested hooks' do
  before(:context) do
    puts "OUTER Before context"
  end

  before(:example) do
    puts "OUTER Before example"
  end

  it 'does basic math' do
    expect(1 + 100).to eq(101)
  end

  context 'with condition A' do
    before(:context) do
      puts "INNER Before context"
    end

    before(:example) do
      puts "INNER Before example"
    end

    it 'does some more basic math' do
      expect(1+5).to eq(6)
    end

    it 'does even more basic math' do
      expect(7-0).to eq(7)
    end

  end

end
