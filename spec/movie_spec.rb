class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end
  def act
    'Noooooo'
  end

  def fall_off_ladder
    "I wont do it"
  end

  def light_on_fire
    false
  end

end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.act
      actor.act
      actor.fall_off_ladder
      actor.fall_off_ladder
      actor.fall_off_ladder
      actor.fall_off_ladder
      actor.light_on_fire
      actor.light_on_fire
    end
  end
end

# actor = Actor.new("Brad Pitt")
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) {double("Mr. Danger", ready?: true, act: 'any string', fall_off_ladder: 'sure lets do it', light_on_fire: true)}
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      expect(stuntman).to receive(:ready?).once
      expect(stuntman).to receive(:act).at_least(2).times
      expect(stuntman).to receive(:fall_off_ladder).at_most(4).times
      expect(stuntman).to receive(:light_on_fire).twice
      subject.start_shooting
    end
  end
end
