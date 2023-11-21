module WarmUp
    def push_ups
        "Phew, I need a break!"
    end
end
class Gym
    include WarmUp
    def preacher_curls
        "I'm building my biceps."
    end
end
class Dojo
    include WarmUp
    def tai_kyo_kyu
        "Look at my stance!"
    end
end
puts Gym.new.push_ups #=> Phew, I need a break!
puts Dojo.new.push_ups #=> Phew, I need a break!
WarmUp.new # undefined method `new' for WarmUp:Module

puts WarmUp.class # Module
puts Class.superclass # Module
puts Module.superclass # Object

module A
    def a1; end
    def a2; end
end
module B
    def b1; end
    def b2; end
end
class Sample
    include A
    include B
    def some_thing
    end
end
sample = Sample.new
sample.a1
sample.b1
sample.some_thing

module Perimeter
    class Array
        def initialize
            @size = 400
        end
    end
end
our_array = Perimeter::Array.new
ruby_array = Array.new
p our_array.class
p ruby_array.class

# Modules without namespace:
class Push
    def up
        40
    end
end
require "gym" #=> up returns 40
gym_push = Push.new
p gym_push.up

class Push
    def up
        30
    end
end
require "dojo" #=> up returns 30
dojo_push = Push.new
p dojo_push.up

#Using namespace:
module Gym
    class Push
        def up
            puts 40
        end
    end
end
module Dojo
    class Push
        def up
            puts 30
        end
    end
end
dojo_push = Dojo::Push.new
p dojo_push.up #=> 30

gym_push = Gym::Push.new
p gym_push.up #=> 40

module Dojo
    A = 4
    module Kata
        B = 8
        module Roulette
            class ScopeIn
                def push
                    15
                end
            end
        end
    end
end
A = 16
B = 23
C = 42
puts "A - #{A}"
puts "Dojo::A - #{Dojo::A}"
puts "B - #{B}"
puts "Dojo::Kata::B - #{Dojo::Kata::B}"
puts "C - #{C}"
puts "Dojo::Kata::Roulette::ScopeIn.new.push - #{Dojo::Kata::Roulette::ScopeIn.new.push}"
# "include" module
module Foo1
    def self.class_method_1
        puts "this is class method"
    end
    def foo_name
        puts "My name is Boo!!!"
    end
end
class Bar1
    include Foo1
end
Bar1.new.foo_name
Bar1.new.class_method_1
Foo1.class_method_1

module Foo2
    def self.included klass
        puts "Foo2 has been included in class #{klass}"
    end
end
class Bar2
    include Foo2
end
   
#Example 1
module Foo1
    def module_method
        puts "Module Method invoked"
    end
    def self.demo1; end
end
class Bar1
    extend Foo1
end
Bar1.module_method #=> Module Method invoked
Bar1.demo1 # undefined method `demo1' for Bar1:Class (NoMethodError)
#Example 2
module Foo1
    def module_method
        puts "Module Method invoked"
    end
end
class Bar1_1
end
bar1_1 = Bar1_1.new
bar1_1.extend Foo1
bar1_1.module_method #=> Module Method invoked

module Foo2
    def self.extended base
        puts "Class #{base} has been extended with module #{self} !"
    end
end
class Bar2
    extend Foo2
end
   