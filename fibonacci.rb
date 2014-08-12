def start
	puts "Welcome to the the awesome fibonacci program."
	puts "What do you want to do?"
	puts "1. Learn about fibonacci"
	puts "2. Calculate fibonacci"
	puts "3. Print the fibonacci sequence for up to a nth number"
	print "> "

	choice = $stdin.gets.chomp
	
	# Choice nr 1: Learn about fiboncacci
	if choice.to_i == 1
		learn_fibonacci

	# Choice nr 2: Get the fibbonaci number x	
	elsif choice.to_i == 2
		puts "Nice! For which number do you want to calculate the fibonacci number?"
		print "> "

		number = $stdin.gets.chomp

		puts "The fibonacci number #{number} is: %s" %calculate_fibonacci(number.to_i)

	# Print fibonacci sequence
	elsif choice.to_i == 3

		puts "Sure! Up to which number do you want the sequence printed?"
		print "> "

		number = $stdin.gets.chomp.to_i

		for n in (1..number) do
			puts "Number #{n}: #{calculate_fibonacci(n)}"
		end
	else
		puts "Can't you just decide what you want?"
	end

end

def learn_fibonacci
	history = """
	In the Fibonacci sequence of numbers, each number is the sum of the previous two numbers. Fibonacci began the sequence not with 0, 1, 1, 2, as modern mathematicians do but with 1,1, 2, etc. He carried the calculation up to the thirteenth place (fourteenth in modern counting), that is 233, though another manuscript carries it to the next place: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377.[15][16] Fibonacci did not speak about the golden ratio as the limit of the ratio of consecutive numbers in this sequence.
	"""	
	puts history
end

def calculate_fibonacci(number)
	# if number == 0 || number == 1 || number == 2
	# 	number
	# else
	#  	calculate_fibonacci(number-1) + calculate_fibonacci(number-2)
	# end

	curr_num, next_num = 0, 1
	(number).times do
 		curr_num, next_num = next_num, curr_num + next_num	
 	end  
 	curr_num
end

start