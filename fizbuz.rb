print "> "
n = $stdin.gets.chomp.to_i

n.times do |x|
	if x%3 == 0
		puts "fiz"
	else
		puts "buz"
	end
end



# 7
# 0 - fiz
# 1 - buz
# 2 - buz
# 3 - fiz
# 4 - buz
# 5 - buz
# 6 - fiz
