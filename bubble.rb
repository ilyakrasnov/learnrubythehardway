i = 1
start = 0
array = []

print "\nPlease enter numbers to sort separated by a comma \n >"

input = $stdin.gets.chomp

array = input.split(",")

array.each {|i| i.to_i}

				def swap(list,i,j)
					help = list[i]
					list[i] = list[j]
					list[j] = help
					list
				end

				(array.length-1).times do 
					(array.length-1).times do |i| 
							if array[i] > array [i+1]
								swap(array,i,i+1)
							end
					end
				end
puts "\n\n\nYour sorted numbers are: #{array} \nThanks for bubblesorting with us.\n\n\n"
