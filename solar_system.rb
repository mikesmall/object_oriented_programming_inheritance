class System
  #  First we'll need a class to represent the solar system. Let's call it System, and give it an attribute bodies. bodies will start as an empty array (ie. []).
  #  Let's make bodies read-only
  attr_reader :bodies
  @@bodies = []
  #  give System an instance method called add which will add a celestial body to the list.
  def add(celestial_body)
    @@bodies << celestial_body
  end#@add
  #  instance method called total_mass which should add up the mass of all the bodies in bodies, and return it.
  def total_mass

  end#total_mass
end#System

class Body
#  class to represent the various celestial bodies. We'll call it Body. Each of them will need a name and a mass. Let's make these read-only; we'll assign them when we create the body.
  attr_reader :name, :mass
  
  def initialize(name, mass)
    @name = name
    @mass = mass
  end#initialize

end#Body
