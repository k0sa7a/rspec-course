class King
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

RSpec.describe King do
  subject {described_class.new('Boris')}
  let(:simeon) {described_class.new('Simeon')}

  it 'should be a great person' do
    expect(subject.name).to eq('Boris')
    expect(simeon.name).to eq('Simeon')
  end

end
