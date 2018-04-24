#edit --> insert, remove, or replace
#check if 1 or 0 edits away


#oh dear
def one_away?(a, b)
  if a.length >= b.length
    return false if a.length > b.length + 1
    length = a.length
  else
    return false if b.length > a.length + 1
    length = b.length
  end

  # replace
  dif_count = 0
  i = 0
  if a.length == b.length
    while i < length
      dif_count += 1 unless a[i] == b[i]
      return false if dif_count > 1
      i += 1
    end
    return true
  end

  # remove / add
  a_arr = a.chars
  b_arr = b.chars
  i = 0

  while i < length
    index_of_b_char = a_arr.index(b[i])
    a_arr.delete_at(index_of_b_char) if index_of_b_char
    i += 1
  end

  return false if a_arr.length > 1
  return true

end
