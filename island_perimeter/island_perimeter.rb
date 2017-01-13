# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
   	grid.each do |arr|
		arr.unshift 0
		arr << 0
	end
	pad = Array.new(grid[0].length,0)
	grid << pad
	grid.unshift(pad)
	height = grid.length
	width = grid[0].length
	row = 0 
	per = 0
	while row < height
		col = 0
		while col < width
			if grid[row][col] == 1
				if grid[row-1][col] == 0
					per += 1
				end
				if grid[row+1][col] == 0
					per += 1
				end
				if grid[row][col+1] == 0
					per += 1
				end
				if grid[row][col-1] == 0
					per += 1
				end
			end
			col += 1
		end
		row += 1
	end
	per 
end