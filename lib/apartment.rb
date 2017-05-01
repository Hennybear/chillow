require_relative 'dwelling'
require_relative 'occupant'
require_relative 'manager'

require 'pry'

class Apartment < Dwelling
  include Manager

  attr_reader :rent_price, :lease_start_date, :lease_end_date
  attr_accessor :occupants, :vacancies

  def initialize(street, city, state, zip, rent_price, lease_start_date, lease_end_date)
    super(street, city, state, zip)
    @rent_price = rent_price
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @occupants = []
    @vacancies = 4 - @occupants.size
  end

  def full?
    # @vacancies < 1
    Manager.full?(0, @vacancies)
  end

  def add_roommate(occupant)
    if !full?
      # @occupants << occupant
      Manager.add_thing(occupant, @occupants)
    end
    @vacancies = @vacancies - 1
  end

  def remove_roommate!(occupant)
    @occupants = @occupants.select { |current_occupant| current_occupant.first_name != occupant.first_name }

    @vacancies = @vacancies + 1
  end
end
