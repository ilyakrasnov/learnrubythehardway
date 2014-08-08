first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "What's the fourth value?"
fourth_value = $stdin.gets.chomp

puts "Your fourt variable is: #{fourth_value}"