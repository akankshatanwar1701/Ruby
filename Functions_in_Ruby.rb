def hi	#Defining a function
	puts "Hello World!"
end

hi #Calling a function / alt: hi()

def hi(name) #Function overloading, same function with one argument
	puts "Hello #{name}!"
end

hi("andrew") #Calling the parameterized function

def hi(name="World!") #Using Default arguments
	puts "Hello #{name.capitalize}!" 
end

hi "chris"


