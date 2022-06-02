require 'rspec'

require_relative '../lib/string_average.rb'


describe StringAverage do
  context 'calculate' do
    let(:allowed_values) {%w{zero one two three four five six seven eight nine}}

    it 'should return a String' do
      expect(StringAverage.calculate("one")).to be_a String
    end

    it 'should return n/a if ten is entered' do
      expect(StringAverage.calculate('ten')).to eq('n/a')
    end

    it 'should return n/a if twentytwo is entered' do
      expect(StringAverage.calculate('twentytwo')).to eq('n/a')
    end

    it 'should return n/a if xdkaiwe234s is entered' do
      expect(StringAverage.calculate('xdkaiwe234s')).to eq('n/a')
    end

    it 'should return an allowed value' do
      result = StringAverage.calculate('zero nine five')
      expect(allowed_values.include?(result)).to be true
    end

    it 'should return the correct value' do
      expect(StringAverage.calculate('zero nine five two')).to eq('four')
      expect(StringAverage.calculate('six nine five')).to eq('six')
      expect(StringAverage.calculate('eight nine five two seven zero one'))
        .to eq('four')
    end
  end
end
