require 'greeter'


describe Greeter do
  it 'prints a message and a smiley' do
    smiley_double = double :smiley, get: ":-)"
    greeter = Greeter.new(smiley_double)
    expect(greeter.greet).to eq "Hello :-)"
  end
end

describe Smiley do
  describe '#get' do
    it 'returns a smiley' do
      smiley = Smiley.new
      expect(smiley.get).to eq ':-)'
    end
  end
end
