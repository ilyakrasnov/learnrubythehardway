i, j = 10, 10

picture = Array.new(i){Array.new(j)}

def randomize_picture(p)
	array = [" "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ","X"]
	rows = p.length
	cols = p[0].length

	rows.times do |row|
		cols.times do |col|
			this_row = p[row]
			this_row[col] = array.sample(1)[0]
		end		
	end
	return p
end

randomize_picture(picture)

def show_picture(p)

	rows = p.length
	cols = p[0].length

	rows.times do |row|
		print "____" * cols + "\n"

		cols.times do |col|
			this_row = p[row]
			if col == cols-1
				print " #{this_row[col]} |\n"
			else
				print " #{this_row[col]} |"
			end
		end		
	end
	print "____" * cols + "\n"
end

def check_black_cells(p)
	rows = p.length
	cols = p[0].length

	black_cells = []
	rows.times do |row|
		cols.times do |col|
			this_row = p[row]
			if this_row[col] == "X"
				coord = [row,col]
				black_cells << coord
			end
		end
	end
	return black_cells
end
# print "#{check_black_cells(picture)}\n"


def blur(p)
	puts "\nFirst picture: "
	show_picture(p)
	print "\n\n\n"

	black_cells = check_black_cells(p)
	puts "Coordinates of black_cells of the picture are: "
	print "#{black_cells}\n\n\n"

	blurred_picture = p

	blurred_char = "0"

	blurred_cells = []

	black_cells.each do |cell|
		[-1,0,1].each do |horiz|
			[-1,0,1].each do |vert|

				# There are still overflow problems


				# if cell[0]+horiz != nil
				if (cell[0]+horiz).between?(0,p[0].length-1)
					# if cell[1]+vert != nil
					if (cell[1]+vert).between?(0,p.length-1) 
						# blurred_cells << [cell[0]+horiz,cell[1]+vert]
						blurred_picture[cell[0]+horiz][cell[1]+vert] = blurred_char		
					else
						# blurred_cells << [cell[0]+horiz,cell[1]]
						blurred_picture[cell[0]+horiz][cell[1]] = blurred_char
					end
				else
					if cell[1]+vert != nil
						# blurred_cells << [cell[0],cell[1]+vert]
						blurred_picture[cell[0]][cell[1]+vert] = blurred_char		
					else
						# blurred_cells << [cell[0],cell[1]]
						blurred_picture[cell[0]][cell[1]] = blurred_char
					end
				end

				blurred_cells << [cell[0]+horiz,cell[1]+vert]
				
			end
		end
	end
	# puts "Cells to be blurred: \n"
	# print blurred_cells
	puts "Resulting blurred picture: "
	show_picture(blurred_picture)
end

blur(picture)