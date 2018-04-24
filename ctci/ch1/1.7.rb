#first
def rotate(matrix)
  length = matrix.length
  arr = []

  i = length - 1
  while i >= 0
    j = 0
    while j < length
      arr << matrix[j][i]
      j += 1
    end
    i -= 1
  end
  arr.each_slice(length).to_a
end


#in place
def rotate(matrix)
  return false if matrix.length == 0 || matrix.length != matrix[0].length
  n = matrix.length
  layer = 0
  while layer < (n / 2)
    first = layer
    last = n - 1 - layer
    i = first
    while i < last
      offset = i - first

      top = matrix[first][i]

      #left -> top
      matrix[first][i] = matrix[last-offset][first]

      #bottom -> left
      matrix[last-offset][first] = matrix[last][last-offset]

      #right -> bottom
      matrix[last][last-offset] = matrix[i][last]

      #top -> right
      matrix[i][last] = top #right <- saved top
      i += 1
    end
    layer += 1
  end
  return matrix
end


p rotate([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]])
p rotate([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
