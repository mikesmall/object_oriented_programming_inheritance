class Person
  def initializer(name)
    @name = name
  end#initializer
  def greeting
    puts "Hi, my name is #{name}"
  end#greeting
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
