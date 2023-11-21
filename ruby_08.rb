#Example
def print_your_name(name) #kiểu string thì phải viết "string"
    puts "Your name is " + name 
    puts "Another name"
end
def square(x) = x * x

#Example
def calculate_value_1(x,y)
    p x + y
end
def calculate_value_2(value='default', arr=[])
    puts value
    puts arr.sum
end
def calculate_value_3(x,y,*otherValues)
    puts otherValues
end
#Excute method
calculate_value_1(1, 2)
calculate_value_2
calculate_value_2(1)
calculate_value_3(1, 2)
calculate_value_3(1, 2, 4, true)
calculate_value_4(1, 2)
calculate_value_4(1, 2, c: 3)
calculate_value_4(1, 2, c: 3, d: 4)

#Example
def calculate_value(x,y)
    p "x / y = #{x / y}"
end
def second_calculate_value(x,y)
    return puts " x / y = #{x / y}"
    puts " End line second_calculate_value method"
end
def third_calculate_value(x,y)
    return puts " x / y = #{x / y}" if y > 0
    puts " Don't calculate because y <= 0"
end
def fourth_calculate_value(x,y)
    return puts " x / y = #{x / y}" if y > 0
end
#Excute method
puts "1.Call method calculate_value(x,y)"
calculate_value(4, 2)
puts "2.Call method second_calculate_value(x,y)"
second_calculate_value(4, 2)
puts "3.Call method third_calculate_value(x,y)"
third_calculate_value(1, 0)
puts "4.Call method fourth_calculate_value(x,y)"
fourth_calculate_value(1, 0)
puts " fourth_calculate_value(1, 0) would be return
nil"

#Example
class Invoice
    # class method
    def self.print_out
        "Printed out invoice"
    end
    # instance method
    def convert_to_pdf
        "Converted to PD"
    end
end
puts "1.Execute class method"
puts Invoice.print_out
puts "2.Execute instance method"
puts Invoice.new.convert_to_pdf

#Example
1.upto(10){|x| puts x}
1.upto(10) do |x|
 puts x
end
1.upto(10) # No block specified
{|x| puts x} # Syntax error: block not after an invocation

#Example
def hello(&block)
    yield
end
hello do
    puts " Implicit block"
end
   
#Example
# A block is just a Proc!
def what_am_i(&block)
    block.class
end
puts what_am_i {}
   # => Proc

square = Proc.new do |n|
    n ** 2
end
p square.call (2)

#Example
puts "1. Execute square"
square = lambda {|n| n ** 2}
puts " 2**2 = #{square.call (2)}"

#Example
lam = lambda { |x| puts x } # creates a lambda that takes 1 argument
lam.call(2) # prints out 2
lam.call # ArgumentError: wrong number of arguments (0 for 1)
lam.call(1,2,3) # ArgumentError: wrong number of arguments (3 for 1)

proc = Proc.new { |x| puts x } # creates a proc that takes 1 argument
proc.call(2) # prints out 2
proc.call # returns nil
proc.call(1,2,3) # prints out 1 and forgets about the extra arguments

#Example
def lambda_test
    lam = lambda{return}
    lam.call
    puts "End line of lambda_test method"
end
def proc_test
    proc = Proc.new{return puts "Return in proc"}
    proc.call
    puts "End line of proc_test method"
end
puts "1. Execute lambda_test"
lambda_test
puts "2. Execute proc_test"
proc_test
   

   