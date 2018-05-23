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



#book answer
def one_edit_away(first, second)
  if first.length == second.length
    return one_edit_replace(first, second)
  elsif first.length + 1 == second.length
    return one_edit_insert(first, second)
  elsif first.length - 1 == second.length
    return one_edit_insert(second, first)
  end
  return false
end

def one_edit_replace(s1, s2)
  found_dif = false
  s1.length.times do |i|
    if s1[i] != s2[i]
      if found_dif
        return false
      end
      found_dif = true
    end
    i += 1
  end
  return true
end

def one_edit_insert(s1, s2)
  index1 = 0
  index2 = 0
  while index2 < s2.length && index1 < s1.length
    if s1[index1] != s2[index2]
      if index1 != index2
        return false
      end
      index2 += 1
    else
      index1 += 1
      index2 += 1
    end
  end
  return true
end
