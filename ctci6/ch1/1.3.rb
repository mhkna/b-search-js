#first
def urlify(string)
  arr = string.chars.map do |char|
    char == " " ? char = "%20" : char
  end
  arr.join
end

p urlify("Mr John Smith")
#output Mr%20John%20Smith
