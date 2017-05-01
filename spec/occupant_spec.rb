require 'spec_helper'

describe Occupant do
  let(:occupant) { Occupant.new('Thohyenam', 'Guerra') }

  describe '#initialize' do
    it 'accepts a first name' do
      expect(occupant.first_name).to eq('Thohyenam')
    end

    it 'accepts a last name' do
      expect(occupant.last_name).to eq('Guerra')
    end
  end
end
