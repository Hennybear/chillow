require 'spec_helper'

describe House do
  let(:house) { House.new('2988 Santa Margarita St.', 'Las Vegas', 'NV', '89146', '$500,000') }

  describe '#initialize' do
    it 'accepts an asking price' do
      expect(house.asking_price).to eq('$500,000')
    end

    it "has access to the dwelling's street address" do
      expect(house.street).to eq('2988 Santa Margarita St.')
    end

    it "has access to the dwelling's city name" do
      expect(house.city).to eq('Las Vegas')
    end

    it "has access to the dwelling's state name" do
      expect(house.state).to eq('NV')
    end

    it "has access to the dwelling's zip code" do
      expect(house.zip).to eq('89146')
    end
  end
end
