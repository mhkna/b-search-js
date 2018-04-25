#first
def rotation?(s1, s2)
  return false unless s1.length == s2.length

  s1.length.times do |i|
    return true if s1.chars.rotate(i) == s2.chars
  end

  return false
end

rotation?("waterbottle", "erbottlewat")


#handmade rotate method
def rotate(str)
  temp = str[0]
  (str.length-1).times do |i|
    str[i] = str[i+1]
  end
  str[str.length-1] = temp
  return str
end
