RSpec.describe 'before and after hooks' do
  before(:context) do
    puts "Before context"
  end

  after(:context) do
    puts "Before context"
  end

  before(:example) do
    puts "Before example"
  end

  after(:example) do
    puts "Before example"
  end

  it 'is just a random example' do
    expect(10 * 2).to eq(20)
  end

  it 'is just another example' do
    expect(199 - 99).to eq(100)
  end

end
