#first
def zero(matrix)
  length = matrix.length
  rows_to_zero = []
  cols_to_zero = []

  length.times do |i|
    length.times do |j|
      if matrix[i][j] == 0
        rows_to_zero << i
        cols_to_zero << j
      end
    end
  end

  length.times do |i|
    length.times do |j|
      if rows_to_zero.include?(i) || cols_to_zero.include?(j)
        matrix[i][j] = 0
      end
    end
  end

  matrix
end

#java translate
def set_zeros(matrix)
  row = []
  col = []

  matrix.length.times do |i|
    matrix[0].length.times do |j|
      if matrix[i][j] == 0
        row << i
        col << j
      end
    end
  end

  row.each { |r| zero_row(matrix, r) }
  # p matrix returns entire matrix with 0s in rows

  col.each { |c| zero_col(matrix, c) }

  return matrix
end

def zero_row(matrix, row)
  matrix[0].length.times { |j| matrix[row][j] = 0 }
end

def zero_col(matrix, col)
  matrix.length.times { |i| matrix[i][col] = 0 }
end
