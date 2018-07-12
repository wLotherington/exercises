# understand
#   method to transpose array (3 x 3)
#   don't mutate the original one
#   
# i/o
#   input - 3 x 3 array
#   output - new array that is transposed
#
# algorithm
#   initialize new arr
#   arr.each_with_idx to access each innner arr
#   arr.each_with_idx to access each inner arr elem
#   shovel first idx is the main arr pos
#
# reflection
#   could have donw the map inside the iteration
#
# further exploration
#   make a transpose that mutates the arg
#   was about to post, but my transpose! is identicle to charles G. nice solution imo

def transpose(matrix)
  new_matrix = (1..matrix.size).map{[]}
  
  matrix.each_with_index do |arr, col|
    arr.each_with_index { |elem, row| new_matrix[row][col] = elem }
  end
  new_matrix
end

def transpose!(matrix)
  (1...matrix.size).each do |y|
    (0...y).each { |x| matrix[y][x], matrix[x][y] = matrix[x][y], matrix[y][x] }
  end
  matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

new_matrix = transpose!(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix != [[1, 5, 8], [4, 7, 2], [3, 9, 6]]