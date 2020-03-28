#!/usr/bin/env ruby

class Greeter #Defining a class
	def initialize(name="World!")
		@name=name
	end

	def say_hi
		puts "Hi #{@name}!"
	end

	def say_bye
		puts "Bye #{@name},come back soon!"
	end
end

greeter= Greeter.new("Patrick") #Instantiating a class

greeter.say_hi
greeter.say_bye

Greeter.instance_methods
puts greeter.respond_to?("name")

#Altering Classes, giving access to the objects variable
class Greeter
	attr_accessor  :name
end

puts greeter.respond_to?("name")
puts greeter.name

greeter.name="Becky"
puts greeter.name
greeter.say_hi


class MegaGreeter
	attr_accessor :names

	#Creating the object
	def initialize(names = "World")
		@names=names
	end

	#Say hi to everybody
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
		# @names is a list of some kind, iterate!
			@names.each do |name|
				puts "Hello #{name}!"
		end

		else
			puts "Hello #{@names}!"
		end
	end

	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
		# Join the list elements with commas
				puts "Goodbye #{@names.join(",")}. Come back soon!"

		else
			puts "Goodbye #{@names}. Come back soon!"
		end
	end
end

if __FILE__==$0
	mg=MegaGreeter.new
	mg.say_hi
	mg.say_bye

	#Changes name to be "Zeke"
	mg.names="Zeke"
	mg.say_hi
	mg.say_bye

	#Changes the name to an array of names
	mg.names = ["Albert","Brenda","Charles","Dave","Engelbert"]
	mg.say_hi
	mg.say_bye

	#Change to nil
	mg.names=nil
	mg.say_hi
	mg.say_bye
end



