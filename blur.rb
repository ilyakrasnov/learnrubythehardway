
i, j = 10, 10
array = ["-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","-","X"]

Matrix.build(i,j) { |row, col| row, col = array.sample(1)[0]  }

picture = 

# picture.row_size.times do |row|
# 	picture.column_size.times do |col|
# 		if col == picture.column_size-1
# 			print "#{row},#{col} \n"
# 		else
# 			print "#{row},#{col} "
# 		end
# 	end
# end


def show_matrix(m)
	m.row_size.times do |row|
		print "._" * m.column_size + "\n"
			m.column_size.times do |col|
				if col == m.column_size-1
					
					print "|#{m.element(row,col)}|\n"
				else
				 	print "|#{m.element(row,col)}"
				end
			end
		end
	print "._" * m.column_size + "\n"	
end

def check_black_cells(m)
	black_cells = []
	m.row_size.times do |row|
		m.column_size.times do |col|
			if m.element(row,col) == "X"
				coord = [row,col]
				black_cells << coord
			end
		end
	end
	return black_cells
end




def blur(m)
	black_cells = check_black_cells(m)
	
	res = m.collect { |e| 
		e.downcase
	}

	# black_cells.each do |cell|
	# 	[-1,1].each do |horiz|
	# 		[-1,1].each do |vert|
	# 			m.element[cell[0]+horiz][cell[1]+vert]="Z"
	# 		end
	# 	end
	# end
	
	show_matrix(res)
end










show_matrix(picture)
puts "___________________________"
puts check_black_cells(picture)
puts "___________________________"
blur(picture)