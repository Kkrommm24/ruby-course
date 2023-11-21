p "the quick brown fox jumps over the lazy dog"
p 'the quick brown fox jumps over the lazy dog'
p 'the quick brown fox jumps over the lazy dog'.class

p "the quick brown " + "fox" + "jumps over the lazy " + "dog"
# string interpolation
puts "Enter name of an animal"
animal = gets.chomp
puts "Enter a noun"
noun = gets.chomp
p "the quick brown #{animal} jumps over the lazy #{noun}"
# try again with single quote
p 'the quick brown #{animal} jumps over the lazy #{noun}'
# Other example
p "the quick brown #{2 + 2}"

p "###Upcase"
p "The quick brown fox jumps over the lazy dog".upcase
p "###Downcase"
p "The quick brown fox jumps over the lazy dog".downcase
p "###Swapcase"
p "The quick brown fox jumps over the lazy dog".swapcase
p "###Reverse"
p "The quick brown fox jumps over the lazy dog".reverse
p "###Reverse-Upcase"
p "The quick brown fox jumps over the lazy dog".reverse.upcase

# gsub return a copy of string
s = "the quick brown fox jumps over the lazy dog"
puts s.gsub(/[aeiou]/, '*')
s.gsub('e', '*')
s.gsub('e') {|c| c.ord.to_s}
s.gsub(/[eo]/, 'e' => 8, 'o' => 9)

#gsub! return string
s = "the quick brown fox jumps over the lazy dog"
puts s.gsub!(/[aeiou]/, '*')
puts s.gsub!('e', '*')
puts s

#split
s1 = "the quick brown fox jumps over the lazy dog"
puts s1.split(' ', 1)
puts s1.split(' ', 4)

