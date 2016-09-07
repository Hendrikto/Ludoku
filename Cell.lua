-- author: Hendrik Werner

require "class"

Cell = class(function(cell, sudoku, row, column, block)
		cell.value = 0

		cell.sudoku = sudoku
		cell.row = row
		cell.column = column
		cell.block = block
	end)

function Cell:setValue(new_value)
	self.value = new_value
end

function Cell:clear()
	self.value = 0
end

function Cell:__tostring()
	return self.value
end
