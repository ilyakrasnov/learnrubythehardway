states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'


puts '-' * 10
puts "NY State hase: #{cities['NY']}"
puts "OR State hase: #{cities['OR']}"


puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

puts '-' * 10
states.each do |state, abbreviation|
	puts "#{state} is abbreviated #{abbreviation}"
end

puts '-' * 10
states.each do |state, abbreviation|
	city = cities[abbreviation]
	puts "#{state} is abbreviated #{abbreviation} and has city #{city}"
end

puts '-' * 10
state = states['Texas']

if !state
	puts "Sorry, no Texas"
end

city = cities['Texas']
city ||= 'Does not exist'
puts "The city for the state 'TX' is: #{city}"