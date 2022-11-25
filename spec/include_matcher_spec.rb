RSpec.describe 'the include matcher' do
  describe 'hot coffee' do
    it 'checks substring inclusion in a string' do
      expect(subject).to include('hot')
      expect(subject).to include('of')
      expect(subject).to include('fee')
    end
  end

  describe [10, 20, 499] do
    it 'checks for array element inclusion' do
      expect(subject).to include(10)
      expect(subject).to include(499, 10)
    end
  end

  describe ({a: 1, b: 2}) do
    it 'checks for keys inclusion in a hash' do
      expect(subject).to include(:a)
    end

    it 'checks for key-value pair inclusion' do
      expect(subject).to include(b: 2, a: 1)
      expect(subject).to include({b: 2, a: 1})
    end
  end
end
