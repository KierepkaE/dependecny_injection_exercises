require 'greeter'

describe Smiley do
  it 'returns a smiley' do
    smiley = Smiley.new
    expect(smiley.get).to eq ':-)'
  end
end
