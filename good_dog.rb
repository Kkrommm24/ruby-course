class GoodDog
end
sparky =GoodDog.new

class Box
    # constructor method
    def initialize w,h
        @width, @height = w, h
    end
    # accessor methods
    def getWidth
        @width
    end
    def getHeight
        @height
    end
    # setter methods
    def setWidth value
        @width = value
    end
    def setHeight value
        @height = value
    end
    def getArea
        @width * @height
    end
       
end
# create an object
box = Box.new 10, 20
# use setter methods
box.setWidth 30
box.setHeight 50
# use accessor methods
x = box.getWidth
y = box.getHeight
puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

# create an object
box = Box.new 10, 20
# call instance methods
a = box.getArea
puts "Area of the box is : #{a}"

class Box
    @@count = 0
    def initialize w, h
        @width, @height = w, h
        @@count += 1
    end
    def self.printCount
        puts "Box count is : #@@count"
    end
end
# create two object
box1 = Box.new 10, 20
box2 = Box.new 30, 100
# call class method to print box count
Box.printCount

#1 Encapsulation instance method: From outside the class
class Box
    def public_instance
        puts "public_instance is public method!!!!"
    end

    protected
    def protected_instance
        puts "protected_instance is protected method!!!!"
    end
   
    private
    def private_instance
        puts "private_instance is private method!!!!"
    end
end

box = Box.new
box.public_instance 
box.protected_instance 
box.private_instance

#2 Encapsulation instance method: From inside the class
class Box
    def public_instance
        puts "public_instance is public method!!!!"
        #c1
        protected_instance
        private_instance
        #c2
        self.protected_instance
        self.private_instance
    end

    protected
    def protected_instance
        puts "protected_instance is protected method!!!!"
    end
   
    private
    def private_instance
        puts "private_instance is private method!!!!"
    end
end
   
box = Box.new
box.public_instance

#1 Encapsulation class method: From outside the class
class Staff
    class << self
        def public_class
            puts "public_class is public method!!!!"
        end

        protected
        def protected_class
            puts "protected_class is protected method!!!!"
        end
   
        private
        def private_class
            puts "private_class is private method!!!!"
        end
    end
end

Staff.public_class #=> "public_class is public method!!!!"
Staff.protected_class #=> protected method `protected_class' called for Staff:Class (NoMethodError)
Staff.private_class #=> private method `private_class' called for Staff:Class (NoMethodError)

class Staff
    class << self
        def public_class
            puts "public_class is public method!!!!"
            self.protected_class
            self.private_class
            Staff.protected_class
            # Staff.private_class #Error private method `private_class' called for Staff:Class (NoMethodError)
        end

        protected
        def protected_class
            puts "protected_class is protected method!!!!"
        end
   
        private
        def private_class
            puts "private_class is private method!!!!"
        end
    end
end 
Staff.public_class

#Inheritance
class Animal
    def speak
        "Hello!"
    end
end

class GoodDog < Animal
    attr_accessor :name
    def initialize n
        self.name = n
    end
    def speak
        "#{self.name} says arf!"
    end
end
class Cat < Animal
end

sparky = GoodDog.new "Sparky"
paws = Cat.new
puts sparky.speak # => Sparky says arf!
puts paws.speak

# 2. Inheritance instance method with access modifier
class Box
    def public_instance
        puts " public_instance is public method!!!!"
    end

    protected
    def protected_instance
        puts " protected_instance is protected method!!!!"
    end
   
    private
    def private_instance
        puts " private_instance is private method!!!!"
    end
end

class BigBox < Box
    def big_box_public_instance
        public_instance
        protected_instance
        private_instance
    end
    def big_box_public_instance_1
        self.protected_instance
        self.private_instance
    end
end
   big_box = BigBox.new
   big_box.public_instance
   # big_box.protected_instance #=> protected method `protected_instance' called for #<BigBox:0x0000000000f0a9b0> (NoMethodError)
   # big_box.private_instance #=> private method `private_instance' called for #<BigBox:0x0000000000f0a9b0> (NoMethodError)
   big_box.big_box_public_instance
   big_box.big_box_public_instance_1

#3. Inheritance class method with access modifier
class Staff
    class << self
        def public_class
            puts "public_class is public method!!!!"
        end

        protected
        def protected_class
            puts "protected_class is protected method!!!!"
        end
   
        private
        def private_class
            puts "private_class is private method!!!!"
        end
    end
end

class Manager < Staff
    def self.manager_public_class
        protected_class
        private_class
        self.protected_class
        self.private_class
    end
end
Manager.public_class
# Manager.protected_class #=> protected method `protected_class' called for Manager:Class (NoMethodError)
# Manager.private_class #=> private method `private_class' called for Manager:Class (NoMethodError)
Manager.manager_public_class

#Polymorphism
class Box
    # constructor method
    def initialize w,h
        @width, @height = w, h
    end
    # instance method
    def getArea
        @width * @height
    end
end

class BigBox < Box
    # change existing getArea method as follows
    def getArea
        @area = @width * @height
        puts "Big box area is : #@area"
    end
end
box = BigBox.new 10, 20
box.getArea
