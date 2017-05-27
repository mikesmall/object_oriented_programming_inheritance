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

# 6. Create an instance of Instructor whose name is "Chris" and call his greeting.

chris = Instructor.new('Chris')

# 7. Create an instance of Student whose name is "Cristina" and call her greeting.

cristina = Student.new('Cristina')

# 8(a) Call the teach method on your instructor instance and call the learn method on your student.

chris.teach

cristina.learn

# 8(b) Next, call the teach method on your student instance. What happens? Why doesn't that work? Leave a comment in your program explaining why.

cristina.teach
# This can't work because 'cristina' is an instance of the 'Student' class, and 'teach' is as instance-method belonging to the 'Instructor' class.
