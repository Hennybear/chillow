require_relative 'dwelling'

class House < Dwelling
  attr_accessor :asking_price

  def initialize(street, city, state, zip, asking_price)
    super(street, city, state, zip)
    @asking_price = asking_price
  end
end
