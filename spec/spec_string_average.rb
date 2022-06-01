require 'rspec'

require_relative '../lib/string_average.rb'


describe StringAverage do
  it 'should return a String' do
    expect(StringAverage.calculate("one")).to be_a String
  end
end
