
#Using the each method on array
numbers=[1,2,3,4]

numbers.each{|n| puts n}

#Using each method on Hash
hash={ bacon: 300, coconut: 200}

hash.each{|key,value| puts "#{key} has the value #{value}"}

#Using each_with_index method
animals = ["cat","dog","tiger"]
animals.each_with_index { |animal, idx| puts "We have a #{animal} with index #{idx}"}

#Times Loop
10.times {puts "hello" }

10.times{ |i| puts "hello #{i}"}

#Range Looping
(1..10).each {|i| puts i}

#Ruby while loop
n=0

while n<10
	puts "#{n} hi"
	n+=1
end

#Ruby Until Loop

bottle=0

until bottle==10
	bottle+=1
end

puts bottle


#unless,next,break
14.times do |i|
	next unless i.even?

	break if i==14

	puts "hello #{i}"
end	



#step and select
(0...10).select(&:even?)

#upto method
1.upto(5) { |i| puts i }