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
    total_mass = 0
    @@bodies.each do |mass|
    total_mass += mass
    end#each
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

#  Each of our body types needs a class: Planet, Star, and Moon. All of these bodies have some similarities: they all have a name and a mass. So, let's also make them inherit from Body.
class Planet < Body
  attr_accessor :day, :year
  def initialize(name, mass, day, year)
    super(name, mass)
    #  Have a day, which is the number of hours it takes for the planet to rotate all the way around once.
    @day = day
    #  Have a year, which is the number of days it takes for the planet to orbit the sun once.
    @year = year
  end#initialize
end#Planet

class Star < Body
  attr_accessor :type
  def initialize(name, mass, type)
    super(name, mass)
  #  Have a type (ie. our Sun is a G-type star)
    @type = type
  end#initialize
end#Star

class Moon < Body
  attr_accessor :month, :planet_it_orbits
  def initialize(name, mass, month, planet_it_orbits)
    super(name, mass)
    #  Have a month, which is the number of days it takes for the moon to orbit its planet. Again, this can either be Earth days or the planet's days, your choice.
    @month = month
    #  Have a planet that they orbit. We want to store the whole Planet object here.
    @planet_it_orbits = Planet
  end#initialize
end#Moon

## Once we have our structure defined, let's start adding some things to our solar system. We can start with the Sun, the Earth, and the Earth's moon.
# The Sun (Star)
sun = Star.new("The Sun", 2000000)
# The Earth (Planet)
earth = Planet.new("The Earth", 50000)
# The Moon (Moon)
moon = Moon.new("The Moon", 1000)
#  Don't worry too much about getting the masses correct, any number really will do, although you can find their masses on Wikipedia if you want.

total_mass
