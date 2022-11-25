RSpec.describe 'a random double' do
  it 'allows defined methods to be invoked' do
    stuntman = double("Mr Danger", fall_of_building: 'aaaa', punch_wall: true)
    expect(stuntman.fall_of_building).to eq('aaaa')
    expect(stuntman.punch_wall).to eq(true)
  end

  it 'can be done with different syntax' do
    stuntman2 = double("Another Mr Danger")
    allow(stuntman2).to receive(:ride_bike)
    expect(stuntman2.ride_bike).to eq(nil)

    allow(stuntman2).to receive(:scream_loud).and_return('AAA')
    expect(stuntman2.scream_loud).to eq('AAA')

    allow(stuntman2).to receive_messages(ride_car: 'brooom', fly_plane: 'whooosh')
    expect(stuntman2.ride_car).to eq('brooom')
    expect(stuntman2.fly_plane).to eq('whooosh')
  end
end
