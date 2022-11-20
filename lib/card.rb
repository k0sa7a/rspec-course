class Card
  attr_reader :suit
  attr_accessor :value

  def initialize(value, suit)
    @value = value
    @suit = suit
  end
end
