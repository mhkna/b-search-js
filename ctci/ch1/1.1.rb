# first
def unique(str)
  i = 0
  while i < str.length
    j = 0
    while j < str.length
      if str[i] == str[j] && i != j
        return false
      end
      j += 1
    end
    i += 1
  end
  return true
end

#better
def unique(str)
  char_set = Hash.new(0)

  str.length.times do |i|
    return false if char_set[str[i]] == 1
    char_set[str[i]] += 1
  end

  return true
end
