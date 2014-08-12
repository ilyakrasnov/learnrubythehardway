i = 0
numbers = []

while i < 6
	puts "At the top i is #{i}"
	numbers << i

	i += 1
	puts "Numbers now: #{numbers}"
	puts "At the buttom is #{i}"
end

puts "The numbers: "

numbers.each {|num| puts num}