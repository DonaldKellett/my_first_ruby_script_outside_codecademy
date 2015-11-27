=begin
  My First Ruby Script Outside of Codecademy!!!
  Created by Donald Leung
  N.B. This script has no real applications whatsoever.  I'm only creating this script to practice and recall what I have learned in Codecademy about Ruby.
=end

puts "Enter your name please: ";
name = gets.chomp;
puts "Hello, #{name}!";
puts "Enter your age please: ";
age = gets.chomp.to_i;
if age < 18
  puts "Oh I see you're #{age} only!  You're not even an adult yet!"
elsif age >= 18 && age < 65
  puts "You're #{age} years old.  You're an adult."
else
  puts "You're #{age} years old!  You're an elderly!"
end
puts "Hey!  I don't think your age is actually a valid age!  Are you lying?" unless age < 120 # Unless statement
age = age.to_s
sleep 1 # Delays the Ruby script by 1 second
puts "Your age '#{age}' has been converted to a string!" if age.is_a? String
name.upcase!
sleep 1
puts "Your name '#{name}' has been transformed to ALL CAPS" if name == name.upcase
sleep 2 # Delays the script by 2 seconds
for i in 1..100
  puts "This string was 'puts' to the screen #{i} times!"
end
sleep 2
1000.times {puts "This string will be 'puts' to the screen 1000 times by the end of this loop."}
j = 0
sleep 2
while j < 666
  j += 1
  puts j
end
sleep 2
j = 0 # Reset j to 0 for until loop to work
until j >= 666
  j += 1
  puts "This string was 'puts' to the screen via the 'until' loop!  j = #{j}"
end
sleep 2
x ||= 0 # Conditional Assignment
loop do
  x += 1
  puts "x = #{x}"
  break if x > 666
end
sleep 2
example_array = [1,2,"String",3,4,26,37,true,false,nil]
example_array.each do |array_item|
  puts array_item
end
integer_only_array = example_array.select {|array_item| array_item.is_a? Integer}
sleep 1
integer_only_array.each {|array_item| puts array_item}
sleep 1
my_proc = Proc.new do |x|
  if x.is_a? Integer
    puts x ** 2
  else
    puts "Hey!  Don't give me non-integer values!"
  end
end
example_array.each(&my_proc)
sleep 1.5
my_lambda = lambda{|y| puts "This item of the array '#{y}' was 'puts' by a lambda!"}
example_array.each(&my_lambda)
sleep 2
class MyClass
  @@number_of_instances = 0
  def initialize(attr_1,attr_2,attr_3=3,attr_4=4)
    @attr_1=attr_1;@attr_2=attr_2;@attr_3=attr_3;@attr_4=attr_4;@@number_of_instances+=1;
  end
  def self.call_me
    puts "This string was 'puts' to the screen by a direct call to a class method!"
  end
  def rtn_instances_num
    puts "There are #{self.number_of_instances} instances in this class."
  end
  def attr_1
    @attr_1
  end
  def attr_2
    @attr_2
  end
  def attr_3
    @attr_3
  end
  def attr_4
    @attr_4
  end
end
instance_1 = MyClass.new(1,2)
instance_2 = MyClass.new(1,4)
instance_3 = MyClass.new(1,2,120_439_285)
instance_4 = MyClass.new(23324324,2344334,234324234324,2343243423)
puts instance_1.attr_1
puts instance_2.attr_2
puts instance_3.attr_3
puts instance_4.attr_4
sleep 1.5
module MyModule
  PI = 3.1415926535
end
puts MyModule::PI
puts Math::PI
sleep 1
puts "This is the end of my script.  Sorry for wasting your time.";
