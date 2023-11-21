#print out all of the objects in our system
ObjectSpace.each_object(Class) {|c| puts c}
#Get all the methods on an object
"Some String".methods
#see if an object responds to a certain method
obj.respond_to?(:length)
#see if an object is a type
obj.kind_of?(Numeric)
obj.instance_of?(FixNum)

#send()
class Rubyist
    def welcome(*args)
    "Welcome " + args.join(" ")
    end
end
obj = Rubyist.new
puts(obj.send(:welcome, "famous", "Rubyists")) 
# => Welcome famous Rubyists

#respond_to?
class Rubyist
end
rubyist = Rubyist.new

if rubyist.respond_to?(:also_railist)
    puts rubyist.send(:also_railist)
else
    puts "No such information available"
end

class Rubyist
    private
    def say_hello name
        "#{name} rocks!!"
    end
end
obj = Rubyist.new
puts obj.send(:say_hello, "Matz")

#define_method
class A
    define_method(:wilma) {puts "Touch me!!!"}
end
class B < A
    define_method(:barney) {puts "Call me!!!"}
end
b = B.new
b.barney 
b.wilma 
#method_missing
class Caller
    def method_missing(m, *args, &block)
        puts "Called #{m} with #{args.inspect} and #{block}"
    end
end
Caller.new.anything
# => Called anything with [ ] and
Caller.new.anything(3, 4) {something}
# => Called anything with [3, 4] and #<Proc:0x02efd664@tmp2.rb:7>
#eval()
str = "Hello"
puts eval("str + ' Rubyist'") 
# => "Hello Rubyist"
########################
class Person
    def initialize(p1, p2)
        @geek, @country = p1, p2
    end
end
obj = Person.new("Matz", "USA")
puts obj.instance_variable_get(:@geek) # => Matz
puts obj.instance_variable_get(:@country) # => USA
obj.instance_variable_set(:@country, "Japan")
puts obj.inspect # => #<Rubyist:0x2ef8038 @country="Japan", @geek="Matz">

   
   