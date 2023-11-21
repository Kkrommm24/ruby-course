# 2 cách tạo hash
    #1
h = Hash.new
h = Hash["a": 100, "b": 200]
    #2
h1 = {a: 200, b: 300}
# truy cập hash
h[:a] 
h[:c] 
h.keys 
h.values 
Hash.try_convert({1=>2}) #return 1=>2
Hash.try_convert "1=>2"  #return nil

h = Hash["a": 100, "b": 200, "c": 300]
h1 = Hash["a": 100, "b": 200, "c": 300, "d": 400]
h2 = Hash["b": 200, "c": 300, "a": 100]
h3 = Hash["a": 100, "b": 200, "c": 400]
# so sánh giá trị của các key tương ứng, không cần xét thứ tự trong mảng
puts "h == h1 #=> #{h == h1}" 
puts "h == h2 #=> #{h == h2}"
puts "h1 == h2 #=> #{h1 == h2}"

puts "h > h1 #=> #{h > h1}"
puts "h1 > h #=> #{h1 > h}"
puts "h1 != h #=> #{h1 != h}"

puts "h > h3 #=> #{h > h3}"
puts "h <= h3 #=> #{h <= h3}"
puts "h != h3 #=> #{h != h3}"

h.each_key {|key| puts "#{key}"}
h.each {|key, value| puts "#{key}: #{value}"}
h.each_value {|val| puts "#{val}"}
h = {"a": 100, "b": 200}
h["a"] = 10 # => h ⇒ {"a"=>10, "b"=>200}
h["c"] = 300 # => h ⇒ {"a"=>10, "b"=>200, "c"=> 300}
h.store "d", 400 # => h ⇒ {"a"=>10, "b"=>200, "c"=> 300, "d"=>400}
h.except(:a)
h.clear