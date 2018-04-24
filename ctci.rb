# 1.1
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

#1.2
def perm?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def perm?(str1, str2)
  return false if str1.length != str2.length

  chars = Hash.new(0)

  str1.length.times do |i|
    chars[str1[i]] += 1
    chars[str2[i]] += 1
  end

  chars.each do |k, v|
    return false if v.odd?
  end
  return true
end

#better
def permutation?(a, b)
  a_chars, b_chars = Hash.new(0), Hash.new(0)

  return false if a.length != b.length

  a.length.times do |i|
    a_chars[a[i]] += 1
    b_chars[b[i]] += 1
  end

  return a_chars == b_chars;
end
