class HotChocolate
  def drink
    'nice'
  end

  def discard
    'drop'
  end

  def purchase(num)
    "I drank #{num} drinks"
  end
end

RSpec.describe HotChocolate do
  it 'confirms the object can respond to methods' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'can also check for the arguments for the method we are checking' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end
end
