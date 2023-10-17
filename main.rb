# printing

puts "Hello"
print "World"
puts "!"


# variables

=begin
multi line comment
=end

name = "Mike" # string
age = 30 # integer
gpa = 3.5 # float
is_tall= true # boolean

name = "John"

# printing variables

puts "Your name is #{name}"
puts "Your name is " + name

# casting & converting


# to int
puts 3.14.to_i

# to float
puts 3.to_f

# to string
puts 3.0.to_s

puts 100 + "50".to_i

puts 100+ "50.99".to_f

# strings

greeting = "Hello"
# indexes:  01234

# prints length of string
puts greeting.length
# prints 0 index character of string
puts greeting[0]
# check if string contains llo, returns boolean
puts greeting.include? "llo"
# check if string contains z, returns boolean
puts greeting.include? "z"
# returns specified range of string
puts greeting[1,3]

# numbers

puts 2 * 3 # basic arithmetic: + - / *
puts 2**3 # exponent
puts 10 % 3 # modulus operator
puts 1 + 2 * 3 # order of operations
puts 10 / 3.0 # int / float

num = 10
num += 100 # +=, -=, /=, *=
puts num

num = -36.8
puts num.abs() # absolute value
puts num.round() # round

# math class

puts Math.sqrt(144)
puts Math.log(0)

# user input

puts "Enter your name: "
name = gets.chomp
puts "Hello #{name}, whats up"

puts "Enter first num: "
num1 = gets.chomp
puts "Enter second num: "
num2 = gets.chomp
puts num1.to_f + num2.to_f


# arrays

lucky_numbers = [4, 8, "fifteen", 16, 23, 42.0]
# indexes        0  1       2       3   4   5

lucky_numbers[0] = 90
puts lucky_numbers[0]
puts lucky_numbers[1]
# prints last element of array
puts lucky_numbers[-1]

# prints range of array (in this case 2,3,4)
puts lucky_numbers[2,3]
# prints range of array (in this case 2,3,4)
puts lucky_numbers[2..4]

puts lucky_numbers.length

# n dimensional arrays

number_grid = [ [1,2], [3,4] ]
number_grid[0][0] = 99

puts number_grid[0][0]
puts number_grid[0][1]

# array methods

friends = []
friends.push("Oscar")
friends.push("Angela")
friends.push("Kevin")

# friends.pop would remove last element of array

puts friends
puts

puts friends.reverse
puts

puts friends.sort
puts

puts friends.include? "Oscar"

# methods
#                      default value can be defined
def add_numbers(num1, num2=99)
    return num1 + num2
end

sum = add_numbers(4, 3)
puts sum

# conditionals

is_student = false
is_smart = false

if is_student and is_smart
    puts "You are a student"
elsif is_student and !is_smart
    puts "You are not a smart student"
else
    puts "You are not a student and not smart"
end

if 1 > 3
    puts "number comparison was true"
end

# comparison operators: > < >= <= !=, ==

# this acc seems like a cool built in thing :3
if "a" > "b"
    puts "string comparison was true!"
end


# switch statements

# i have never used them

my_grade = "F"

case my_grade
    when "A"
        puts "You Pass"
    when "F"
        puts "You fail"
    else
        puts "Invalid grade"
end

# dictionaries

test_grades = {
    "Andy" => "B+",
    :Stanley => "C",
    "Ryan" => "A",
    3 => 95.2
}

test_grades["Andy"] = "B-"
puts test_grades["Andy"]
puts test_grades[:Stanley]
# this is a key not an index position
puts test_grades[3]

# while loops

index = 1
while index <= 5
    puts index
    index += 1
end

# for loops
# tons of ways to do these

for index in 0...5
    puts index
end

5.times do |index|
    puts index
end

lucky_nums = [4, 8, 15, 16, 23, 42]
for lucky_num in lucky_nums
    puts lucky_num
end

lucky_nums.each do |lucky_num|
    puts lucky_num
end

# exception catching

begin
    num = 10/0
rescue
    puts "Error :3"
end

begin
    num = 10/0
rescue ZeroDivisionError
    puts "Error :3 but this time it is specific!"
rescue
    puts "Some other goofy ass error message lol"
end

# raise "Made Up Exception ;("

# object orientation

class Book
    attr_accessor :title, :author

    def readBook()
        puts "Reading #{self.title} by #{self.author}"
    end
end

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"

book1.readBook()
puts book1.title

# constructors
# basically the same but u can init it?

class Book
    attr_accessor :title, :author
    def initialize(title, author)
        @title = title
        @author = author
    end

    def readBook()
        puts "Reading #{self.title} by #{self.author}"
    end
end

book1 = Book.new("Harry Potter", "JK Rowling")
# book1.title = "Half-Blood Prince"

puts book1.title
book1.readBook

# getters and setters, they get and set, ion understand em
# it dont matter doe

class Book
    attr_accessor :title, :author
    def initialize(title, author)
        self.title = title
        @author = author
    end

    def title=(title)
        puts "Set"
        @title = title
    end
    def title
        puts "Get"
        return @title
    end
end

book1 = Book.new("Harry Potter", "JK Rowling")
puts book1.title

# inheritance

class Chef
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end

    def make_chicken()
        puts "The chef makes chicken"
    end

    def make_salad()
        puts "The chef makes salad"
    end

    def make_special_dish()
        puts "The chef makes bbq ribs"
    end
end


# Italian chef inherits all of the methods from chef
class ItalianChef < Chef
    attr_accessor :country_of_origin
    def initialize(name, age, country_of_origin)
        @country_of_origin = country_of_origin
        super(name, age)
    end

    def make_pasta()
        puts "The chef makes pasta"
    end

    # This overrides the one in the chef class tho
    def make_special_dish()
        puts "The chef makes eggplant parm"
    end
end

my_chef = Chef.new("Gordon Ramsay", 50)
my_chef.make_chicken() 
puts my_chef.name

my_italian_chef = ItalianChef.new("Massimo Bottura", 55, "Italy")
my_italian_chef.make_chicken()
puts my_italian_chef.country_of_origin

=begin
All done!
Now you are familiar with the basics of ruby :3
=end