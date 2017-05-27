class Person
  def initializer(name)
    @name = name
  end#initializer
end#Person


class Student < Person
  def learn
    puts "I get it!"
  end#learn
end#Student

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object!"
  end#teach
end#Instructor
