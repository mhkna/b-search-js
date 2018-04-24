#first
def perm?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

#first-alt
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

#online
def permutation?(a, b)
  a_chars, b_chars = Hash.new(0), Hash.new(0)

  return false if a.length != b.length

  a.length.times do |i|
    a_chars[a[i]] += 1
    b_chars[b[i]] += 1
  end

  return a_chars == b_chars;
end
