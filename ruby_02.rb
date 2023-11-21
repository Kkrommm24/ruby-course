# Global
$global = 0
class C
 puts "in a class: #{$global}"
 def my_method
 puts "in a method: #{$global}"
 $global = $global + 1
 $other_global = 3
 end
end
C.new.my_method
puts "$global: #{$global}, $other_global: #{$other_global}"

# Local
color = "Red"
def method1
 color = 192
 puts("Color Value in method1 : ", color)
end
def method2
 color = 255
 puts("Color Value method2: ", color)
end
method1
method2
method1
puts("Color Value outside methods : " + color)

# Instance
class Student
    def initialize student_id, student_name
    @student_id = student_id
    @student_name = student_name
    end
   
    def show
    puts "Student Name and ID : "
    puts @student_id, @student_name
    end
   end
   Student.new(1, "Sara").show
   Student.new(2, "Raju").show

# Class
class Polygon
    @@sides = 10
    def set_sides sides
    @@sides = sides
    end
    def get_sides
    @@sides
    end
    def self.sides
    @@sides
    end
   end

puts Polygon.sides
p1 = Polygon.new
p1.set_sides 20
puts p1.get_sides
p2 = Polygon.new
p2.set_sides 30
puts p2.get_sides
puts p1.get_sides
puts Polygon.sides

# Constant: định nghĩa bằng khai báo biến với chữ hoa ở đầu
NAME = "LIENQUAN"
NAME = "PUBG"
NAME[0] = "L"
puts NAME
Name = "LIENQUAN"
Name = "PUBG".freeze
Name[0] = "L"
puts Name
#Exercise
x = 0
3.times do
 x += 1
end
puts x
y = 0
3.times do
 y += 1
 x = y
end
puts x
