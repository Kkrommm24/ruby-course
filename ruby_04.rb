sym1 = :hello
sym2 = :"hello"
sym3 = "hello".to_sym
p sym1
p sym2
p sym3

str = "hello"
p "1.We can also use brackets with index number to change the letter"
str[0] = "k"
p "str = #{str}"
sym = :hello
sym[0] = "k" #string đổi được kí tự nhưng symbol thì ko
p "sym = #{sym}"

5.times do
    puts "hello".object_id
   end

5.times do
    puts :hello.object_id
   end
   
require 'benchmark'
str = Benchmark.measure do
 5000000.times do
 "hello" == "hello"
 end
end.total
sym = Benchmark.measure do
 5000000.times do
 :hello == :hello
 end
end.total
puts "Benchmark"
puts "String: #{str}"
puts "Symbol: #{sym}"