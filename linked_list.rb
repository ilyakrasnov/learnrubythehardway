class LinkedList
	attr_accessor :payload, :next 
end

ll1 = LinkedList.new
ll1.payload = "Bla bla bla"

ll2 = LinkedList.new
ll2.payload = "Another payload"

ll3 = LinkedList.new
ll3.payload = "3rd one"

ll1.next = ll2
ll2.next = ll3

def iterate_recursive(l)
		if l.nil? 
			return
		else 
			puts l.payload
			iterate_recursive(l.next)
		end
end

# iterate_recursive(ll1)
def iterate_functional(l)
	node = l
	puts l.payload
	while !node.next.nil?
		node = node.next
		puts node.payload
	end
end


iterate_functional(ll1)


---- HOMEWOK ----
# 1st

def reverse(l)
	# 
end

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
