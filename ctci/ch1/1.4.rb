#first
def palin_perm(string)
  lstr = string.downcase.gsub(/\s+/, "")

  char_hash = Hash.new(0)

  lstr.chars.each { |char| char_hash[char] += 1 }

  if lstr.length.odd?
    odd_count = 0
    char_hash.each do |k, v|
      odd_count += 1 if v.odd?
      return false if odd_count > 1
    end
  else
    char_hash.each do |k, v|
      return false if v.odd?
    end
  end
  return true
end

p palin_perm("Tact Coa")
