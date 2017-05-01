require 'spec_helper'

describe Dwelling do
  let(:dwelling) { Dwelling.new('2988 Santa Margarita St.', 'Las Vegas', 'NV', '89146') }

  describe '#initialize' do
    it 'accepts a street' do
      expect(dwelling.street).to eq('2988 Santa Margarita St.')
    end

    it 'accepts a city' do
      expect(dwelling.city).to eq('Las Vegas')
    end

    it 'accepts a state' do
      expect(dwelling.state).to eq('NV')
    end

    it 'accepts a zip code' do
      expect(dwelling.zip).to eq('89146')
    end

  end
end
