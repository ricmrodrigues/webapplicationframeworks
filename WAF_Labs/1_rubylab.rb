#encoding: UTF-8

#question 1
puts "hello world"

#question 2
puts "\n\t#{(1+2)*3}\nGoodbye"

puts "enter price before tax"
beforeTax = gets.to_i
afterTax = beforeTax*1.21
tax = beforeTax*0.21
puts("price after tax = #{afterTax} and tax = #{tax}")


class Person
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end
end

x = Person.new("ricardo",28)
puts x.name
puts x.age

class Student < Person
	attr_accessor :collegeName, :studentId

	def initialize(name, age, collegeName, studentId)
		@collegeName = collegeName
		@studentId = studentId
		super(name, age)
	end
end

stud1 = Student.new("ricardo", 28, "ric nci", 1234)
puts stud1.collegeName
puts stud1.studentId
puts stud1.name
puts stud1.age
