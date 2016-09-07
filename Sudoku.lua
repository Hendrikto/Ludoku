-- author: Hendrik Werner

require "class"
require "Cell"

Sudoku = class(function(sudoku, seed)
		sudoku.cells = {}
		sudoku.empty = {}

		local rows = {}
		local columns = {}
		local blocks = {}
		for i = 1, 9 do
			rows[i] = {1, 2, 3, 4, 5, 6, 7, 8, 9}
			columns[i] = {1, 2, 3, 4, 5, 6, 7, 8, 9}
		end
		for x = 1, 3 do
			blocks[x] = {}
			for y = 1, 3 do
				blocks[x][y] = {1, 2, 3, 4, 5, 6, 7, 8, 9}
			end
		end
		pos = 1
		for x = 1, 9 do
			for y = 1, 9 do
				sudoku.cells[pos] = Cell(
						sudoku,
						rows[y],
						columns[x],
						blocks[((x - 1) // 3) + 1][((y - 1) // 3) + 1]
					)
				pos = pos + 1
			end
		end
	end)

function Sudoku:__tostring()
	s = ""
	for _, cell in ipairs(self.cells) do
		s = s .. tostring(cell)
	end
	return s
end
