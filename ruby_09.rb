arr = [1, 2, 3, 4, 5, 6]
arr[2] # => 3
arr[100] # => nil
arr[-3] # => 4
arr[2, 3] # => [3, 4, 5]
arr[0, 0] # => []
arr[1..4] # => [2, 3, 4, 5]
arr[1..-3] 
arr = [1, 2, 3, 4, 5, 6]
arr.at 0 # => 1
arr.first # => 1
arr.last # => 6
arr.take 3 
numbers = ["one", "two", "three", "four"]
numbers.length # => 4
numbers.empty? # => false
numbers.include? "ten" 
arr = [1, 2, 3, 4]
arr.push 5 # => [1, 2, 3, 4, 5]
arr << 6 << 7 << 8 # => [1, 2, 3, 4, 5, 6, 7, 8]
a1 = [1]; a2 = [2, 3]; a3 = [4, 5, [6, 7]]
a = a1 << a2 << a3 # => [1, [2, 3], [4, 5, [6, 7]]]
a[1] # => [2, 3]
a[1][0] # => 2
a[2][2][0] # => 6
a.flatten 
#thêm vào đầu array
arr.unshift -1, 0

#thêm 1 phần tử vào mảng ở vị trí tùy chọn
arr.insert 3, "apple"

#remove phần tử cuối array
arr = [1, 2, 3, 4, 5, 6]
arr.pop # => 6
arr 

#remove phần tử đầu array
arr.shift # => 1
arr

#remove 1 phần tử tại vị trí tùy chọn
arr.delete_at(2)

#array có method "each"
arr = [1, 2, 3, 4, 5]
arr.each {|e| puts e}
arr.reverse_each {|e| puts e}
arr.reverse
arr.select{|i| i > 3 }
arr.reject{|i| i > 3 } #reject!{} sẽ làm thay đổi mảng ban đầu
# cứ ! sau câu lệnh là sẽ thay đổi mảng 
# vd: arr.reverse! => đảo mảng ban đầu lại
arr.sample #random trong mảng