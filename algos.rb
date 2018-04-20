=begin
input: string, paren hash from opening paren to closing paren
output: boolean which determines if the string contains balanced parentheses

"()" => True o( c)
"())(" => False o (( c ))

"[](){}" => True o[({ c])}
"[(])" => False o[( c])
"[(1{})]" => True o[({ c})]

parens: {'(' => ')', '[' => ']', '{' => '}'}
=end

def balanced_paren(string, parens)

  openn = parens.keys
  close = parens.values

  recent = []

  string.chars.each do |char|
    if openn.include?(char)
      recent << char
    elsif close.include?(char)
      last_open = recent.pop
      return false unless parens[last_open] == char
    end
  end
  return false if recent.any?
  return true
end



# parens = {'(' => ')', '[' => ']', '{' => '}'}
#
# balanced_paren("[(1{})", parens)
