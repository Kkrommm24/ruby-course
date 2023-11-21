def demo_if_statement x = 1
    if x >= 2
    p "x is greater than 2"
    elsif x <= 2 and x != 0
    p "x is 1"
    else
    p "I can't guess the number"
    end
   end
   demo_if_statement 4
   demo_if_statement 1
   demo_if_statement 0

# cách viết khác
def demo_if_statement x = 1
    return p "x is greater than 2" if x >= 2
    return p "x is 1" if x <= 2 and x != 0
    p "I can't guess the number"
end

#vd toán tử 3 ngôi
def check_a a
    result = (a%2 == 0) ? "even" : "odd"
    p result
end

#Example 1
x = 1
unless x >= 2
 puts "x is less than 2"
else
 puts "x is greater than 2"
end
#Example 2
$var = 1
puts "1 -- Value is set\n" if $var
puts "2 -- Value is not set\n" unless $var
#Example 3
$var = false
puts "3 -- Value is set\n" unless $var

#Example
$age = 76
case $age
when 0 .. 2
 puts "baby"
when 3 .. 6
 puts "little child"
when 7 .. 12
 puts "child"
when 13 .. 18
 puts "youth"
else
 puts "adult"
end

#Example
case ["a", 1, "b", "c", 2, "d", "e", "f", 3]
in [*pre, String => x, String => y, *post]
 p pre #=> ["a", 1]
 p x #=> "b"
 p y #=> "c"
 p post #=> [2, "d", "e", "f", 3]
end
