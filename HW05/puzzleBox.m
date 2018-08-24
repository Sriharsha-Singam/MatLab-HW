function [ solved ] = puzzleBox( puzzle, rows, cols )
%PUZZLEBOX Summary of this function goes here
%   Detailed explanation goes here

    rowShift = rows(length(rows))
    columnShift = cols(length(cols))
    
    rows(length(rows)) = []
    cols(length(cols)) = []
    
    [row,col] = size(puzzle)
    
    rowIndex = 1:row
    colIndex = 1:col
    
    newRow = mod((colIndex-rowShift),col)
    newCol = mod((rowIndex-columnShift),row)
    
    zeroRow = find(newRow == 0)
    newRow(zeroRow) = col
    
    zeroCol = find(newCol == 0)
    newCol(zeroCol) = row
    
    puzzle(rowIndex,cols) = puzzle(cols,newCol)
    puzzle(rows,colIndex) = puzzle(rows,newRow)
%     puzzle(rowIndex,cols) = puzzle(newCol,cols)
%     puzzle(rows,colIndex) = puzzle(rows,newRow)
    
    solved = puzzle
end

