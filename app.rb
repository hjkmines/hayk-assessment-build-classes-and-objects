# Build a Ruby class for a `Building` that:

# * Initializes with a name, address, number of floors, and number of tenants
# * The name and number of tenants should be readable and writeable
# * The address should be readable
# * The number of floors should not be readable or writeable
# * The class should keep track of all buildings that are created
# * The class should tell the average number of tenants in a building
# * A building should have a placard method that returns the name and address of the building
# * A building should have a method returns the average number of tenants per floor

# Then:

# Make objects for the three buildings on this corner. Use a Fermi estimate for the number of tenants.

class Building 

  attr_accessor :name, :num_of_tenants
  attr_reader :address
  
  @@buildings = []

  def initialize (name, address, num_of_floors, num_of_tenants)
    @name = name 
    @address = address
    @num_of_floors = num_of_floors
    @num_of_tenants = num_of_tenants
    @@buildings << self 
  end 

  def self.collection  
    @@buildings 
  end 

  def self.average_number
    @@buildings.map do |hotel|
      hotel.name + "'s Total Tenants: " + hotel.num_of_tenants.to_s
    end 
  end 

  def placard 
    self.name + " " + self.address
  end 

  def avg_number_of_tenants
    self.num_of_tenants/@num_of_floors
  end 

end 