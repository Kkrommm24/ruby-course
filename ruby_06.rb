#Iterations and loops
#Example while..do/begin...end while
puts "1. While do"
    i = 0
    while i < 10 do
     puts("Inside the loop i = #{i}" )
     i +=1
    end
puts "2. Begin While"
i = 0
begin
 puts("Inside the loop i = #{i}" )
 i +=1
end while i < 10    

#Example until...do/begin...end until
puts "1. Until do"
    i = 0
    until i > 5 do
     puts("Inside the loop i = #{i}" )
     i +=1
    end
puts "2. Begin Until"
    i = 0
    begin
     puts("Inside the loop i = #{i}" )
     i +=1
    end until i > 5
    
#Example collection.each{|item| #...}/
#collection.each do |item|
    #...
#end
 
 [123, 345, 678, 910].each{|item|puts item*2}

[123, 345, 678, 910].each do |item|
    puts item*2 #phải lùi đầu dòng do đây là câu lệnh trong vòng each
end

#Example for i in {range} 
    #...
#end/
#(range)each do |i| 
    #...
#end    
for i in 0..5
    puts "Value of local variable is #{i}"
end
(0..5).each do |i|
    puts "Value of local variable is #{i}"
end

#Break
for i in 0..5
    if i > 2 then
        break
    end
    puts "Value of local variable is #{i}"
end

#Next
for i in 0..5
    if i < 2 then
        next
    end
    puts "Value of local variable is #{i}"
end

#Redo
for i in 0..5
    if i < 2 then
        puts "Value of local variable is #{i}"
        redo
    end
end

#Retry
begin
    retries ||= 0
    puts "try ##{retries}"
    raise "the roof"
rescue
    retry if (retries +=1) < 3
end

#Example
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 100]
my_hash = {"Joe" => "male", "Jim" => "male", "Patty" => "female"}
#select method with array
p my_array.select{|item| item%2==0 }
#select method with hash
p my_hash.select{|name, gender| gender == "male" }
#map method with array
p my_array.map{|item| item*2}
#inject method with array
p my_array.inject(0){|running_total, item| running_total + item} # => 136



   
   
   