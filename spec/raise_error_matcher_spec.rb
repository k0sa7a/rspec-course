RSpec.describe 'raise_error matcher' do
  def bad_method
    zzz
  end

  class CustomError < StandardError; end

  # it 'can check for any error (bad practice)' do
  #   expect { bad_method }.to raise_error
  # end

  it 'can check for a specific error' do
    expect { bad_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    expect { 'asasa' / 0 }.to raise_error(NoMethodError)
  end

  it 'can check for user created error' do
    expect {raise CustomError}.to raise_error(CustomError)
  end

end
