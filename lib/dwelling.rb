class Dwelling
  attr_accessor :street, :city, :state, :zip

  def initialize(street, city, state, zip)
    @street = street
    @city = city
    @state = state
    @zip = zip
  end
end
