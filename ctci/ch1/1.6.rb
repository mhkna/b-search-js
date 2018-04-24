#first
def compress(string)
  str = ""
  i = 0
  temp_count = 1

  while i < string.length
    if i == 0
      str += string[i]
    elsif string[i] == string[i - 1]
      temp_count += 1
    elsif string[i] != string[i - 1]
      str += temp_count.to_s
      str += string[i]
      temp_count = 1
    end
  i += 1
  end
  str += temp_count.to_s
  str.length < string.length ? str : string
end
