# understand
#   rotate the matrix
#
# i/o
#   input - matrix
#   output - new matrix
#
# algorithm
#   00 > 00
#   01 > 10
#   02 > 20
#
# create a new arr with placeholder arrs
# iterate through the numbers x,y > y,?

def rotate90(matrix)
  rows, cols = matrix[0].size, matrix.size
  new_matrix = (1..rows).map{[]}

  rows.times do |row|
    cols.downto(1) { |col| new_matrix[row] << matrix[col - 1][row]}
  end
  new_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2