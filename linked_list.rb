class LinkedList
	attr_accessor :payload, :next 
end

ll1 = LinkedList.new
ll1.payload = "Bla bla bla"

ll2 = LinkedList.new
ll2.payload = "Another payload"

ll3 = LinkedList.new
ll3.payload = "3rd one"

ll4 = LinkedList.new
ll4.payload = "Number 4"

ll5 = LinkedList.new
ll5.payload = "High five"

ll6 = LinkedList.new
ll6.payload = "The sixth sense"


ll1.next = ll2
ll2.next = ll3
ll3.next = ll4
ll4.next = ll5
ll5.next = ll6

# iterate_recursive(ll1)
def show_functional(l)
	node = l
	puts l.payload
	while !node.next.nil?
		node = node.next
		puts node.payload
	end
end

def reverse(l)
	if l.next.nil?
		return l
	end

	last = l
	second_last = nil

	while !last.next.nil? 
		second_last = last
		last = last.next
	end
	second_last.next = nil
	last.next = reverse(l)
	
	return last
	
end

# show_functional(reverse(ll1))
show_functional(ll1)
print "\n\n\n\n"
show_functional(reverse(ll1))

# def reverse(l)
# 	print "\n"
# 	print "Original list:\n"
# 	print "\n"
# 	show_functional(l)

# 	if l.next.nil?
# 		l
# 	end

# 	first = l
# 	last = l
# 	second_last = nil

# 	while !first.next.nil?
# 		puts "While 1: #{l.payload}"
# 		while !last.next.nil?
# 			puts "While 2.1: #{last.payload}"
# 			second_last = last
# 			last = last.next
# 			puts "While 2.2: #{last.payload}"
# 		end
		
# 		# last.next = second_last
# 		# second_last = nil
# 	end


		
# 	print "\n"	
# 	print "New list:\n"
# 	print "\n"

# 	show_functional(last)	
# end


# Try putting every node in an array
def list_to_array(l)
	node = l
	arr = []
	arr << l
	while !node.next.nil?
		node = node.next
		arr << node
	end
	return arr
end

# Re-iterate the array and reset next links
def array_to_list(arr)
	arr.each_index do |list|
		if list != 0
			arr[list].next = arr[list-1]
		else
			arr[list].next = nil
		end
	end
	return arr[arr.length-1]
end

# Combine two functions in one and show the result
def reverse_list(l) 
	show_functional(array_to_list(list_to_array(l)))
end

# print "Original list:\n\n"
# show_functional(ll1)

# puts "\n"

# print "Reversed list:\n\n"
# reverse(ll1)
# puts "\n"


# def iterate_recursive(l)
# 		if l.nil? 
# 			return
# 		else 
# 			puts l.payload
# 			iterate_recursive(l.next)
# 		end
# end


# ---- HOMEWOK ----
# 1st




# iterate_functional(reverse(ll1))
# > 3rd one
# > Another payload
# > Blabla  

# 2nd
# learnsql the hard way

# 3rd
# Picture grid
# 1. Data representation
# 2. Blur the image 
# 3. Blur with (n) n = Manhattan distance
