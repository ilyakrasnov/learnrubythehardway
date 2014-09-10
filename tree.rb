class Tree
	attr_accessor :payload, :left, :right 
end

class Queue
  def initialize
    @store = Array.new
  end
  
  def dequeue
    @store.pop
  end
  
  def enqueue(element)
    @store.unshift(element)
    self
  end

  def size
    @store.size
  end
end

root = Tree.new
root.payload = "I am the root"

one = Tree.new
one.payload = 1

two = Tree.new
two.payload = 2

three = Tree.new
three.payload = 3

four = Tree.new
four.payload = 4

five = Tree.new
five.payload = "Justin Biber"

six = Tree.new
six.payload = 6

seven = Tree.new
seven.payload = 7

eight = Tree.new
eight.payload = 8

nine = Tree.new
nine.payload = 9

ten = Tree.new
ten.payload = 10

eleven = Tree.new
eleven.payload = 11

twelve = Tree.new
twelve.payload = 12

thirteen = Tree.new
thirteen.payload = 13

fourteen = Tree.new
fourteen.payload = 14

root.left = one
root.right = two

one.left = three
one.right = four

two.left = five
two.right =six

three.left = seven
three.right = eight

four.left = nine
four.right = ten

five.left = eleven
five.right = twelve

six.left = thirteen
six.right = fourteen


def depth_first(x,root)
	puts "Looking on the node containing #{root.payload}"
	if root.payload == x then
		puts "I found #{x}!"
		exit
	else
		depth_first(x,root.left) if !root.left.nil?
		depth_first(x,root.right) if !root.right.nil?
	end
end


depth_first("Justin Biber",root)

# def breadth_first(x,root)
# 	puts "Looking on the node containing #{root.payload}"
# 	queue = Queue.new
	
# 	while queue
		
# 	end
# 	if root.payload == x then
# 		puts "I found #{x}!"
# 		exit
# 	else
# 		queue.enqueue(root.left) if !root.left.nil?
# 		queue.enqueue(root.right) if !root.right.nil?
# end







