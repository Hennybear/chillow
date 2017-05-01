require 'spec_helper'

describe Apartment do
  let(:apartment) { Apartment.new('2988 Santa Margarita St.', 'Las Vegas', 'NV', '89146', '2000', '9/1/2017', '8/30/2018') }

  describe '#initialize' do
    it 'accepts a rent price' do
      expect(apartment.rent_price).to eq('2000')
    end

    it 'accepts lease start date' do
      expect(apartment.lease_start_date).to eq('9/1/2017')
    end

    it 'accepts lease end date' do
      expect(apartment.lease_end_date).to eq('8/30/2018')
    end

    it "has access to the dwelling's street address" do
      expect(apartment.street).to eq('2988 Santa Margarita St.')
    end

    it "has access to the dwelling's city name" do
      expect(apartment.city).to eq('Las Vegas')
    end

    it "has access to the dwelling's state name" do
      expect(apartment.state).to eq('NV')
    end

    it "has access to the dwelling's zip code" do
      expect(apartment.zip).to eq('89146')
    end
  end

  describe '#full?' do
    it 'returns false if there are vacancies' do
      expect(apartment.full?).to eq(false)
    end

    it 'returns true if there are no vacancies' do
      apartment.add_roommate(Occupant.new('Fiona', 'Wang'))
      apartment.add_roommate(Occupant.new('Henry', 'Ung'))
      apartment.add_roommate(Occupant.new('Christopher', 'Dial'))
      apartment.add_roommate(Occupant.new('Alex', 'Ge'))
      expect(apartment.full?).to eq(true)
    end

  end

  describe '#add_roommate' do
    it 'increases the occupant count by 1 for each additional roommate' do
      apartment.add_roommate(Occupant.new('Fiona', 'Wang'))
      apartment.add_roommate(Occupant.new('Henry', 'Ung'))
      expect(apartment.occupants.count).to eq(2)
    end
  end

  describe '#remove_roommate!'do
    it 'removes the occupant' do
      apartment.add_roommate(Occupant.new('Fiona', 'Wang'))
      apartment.add_roommate(Occupant.new('Henry', 'Ung'))
      apartment.remove_roommate!(Occupant.new('Henry', 'Ung'))
      expect(apartment.occupants.count).to eq(1)
    end
  end
end
