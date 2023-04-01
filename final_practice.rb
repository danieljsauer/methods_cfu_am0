# Defining Our Own Methods
# For each exercise below, write the method according to the requirements. 
# Call each method at least twice and store the return value in a variable. 
# Use the puts or print command to see the return value in the console.


# 1: Write a method named greeting that returns a string with a general greeting. 

def greeting
    "Hello hello"
end

puts greeting

# What is the return value of your method?
# "Hello hello" is the return value. It is implicit since I did not add "return" to my method defintion.

# How many arguments did you pass your method?
# None. No parameters or arguments. 

# 2: Write a method named custom_greeting that returns a greeting WITH a specific name.

def custom_greeting(name)
    "Hello #{name}"
end

puts custom_greeting("Daniel")

# What is the return value of your method?
# The return value is "Hello #{name}"

# How many arguments did you pass your method?
# One. In my example above (Name) is the parameter and "Daniel" is the argument. 

# What data type was your argument(s)?
# A string. 

# 3: Write a method named greet_person that takes in 3 strings, a first, middle, and last name, and returns a sentence with the full name.
def greet_person(first,middle,last)
    "Hello #{first} #{middle} #{last}, how are you today?"
end
puts greet_person("Daniel","John","Sauer")

# What is the return value of your method?
#The return value is, Hello #{first} #{middle} #{last}, how are you today?

# How many arguments did you pass your method?
#Three parameters, three arguments.

# What data type was your argument(s)?
# All three are strings.

# 4: Write a method named square that takes in one integer, and returns the square of that integer.
# Bonus: Print a sentence that interpolates the return value of your square method.
def square(number)
    number * number
end

puts square(4)

# What is the return value of your method?
# number * number is the return value.
# How many arguments did you pass your method?
# One. (number) is the parameter, and in my example above 4 is the argument.
# What data type was your argument(s)?
# Integer. 


# 5: Write a method named check_stock that satisfies the following interaction pattern:
# Hint: You will only write one check_stock method that checks the quantity and then prints the corresponding statement.

def check_stock(count, item)
"We have #{count} #{item} remaining."
end


puts check_stock(4, "Coffee");
# => "Coffee is stocked"

puts check_stock(3, "Tortillas");
# => "Tortillas - running LOW"

puts check_stock(0, "Cheese");
# => "Cheese - OUT of stock!"

puts check_stock(1, "Salsa");
# => "Salsa - running LOW"

#I opted to enter a puts command in front of each iteration, as opposed to adding puts to my method definition. The lesson said to be careful about that since it can affect return values, so I am trying to make a good habit and avoid doing that.
#I don't know how to print the custom statement under each iteration. I am thinking we have to add an if statement for each amount. I will add it below to see if I can figure it out. 
    

def check_stock2(amount,thing)

    if amount >= 4
    "#{thing} is stocked."

    elsif amount >=2
     "#{thing} is running low."

    elsif amount == 1
    "#{thing} is almost out!"

    elsif amount == 0
    "#{thing} is OUT OF STOCK!"
    end

end 

puts check_stock2(4, "Coffee");

puts check_stock2(3, "Tortillas");

puts check_stock2(0, "Cheese");

puts check_stock2(1, "Salsa");

#I feel like there is a cleaner way to do this, but its good to know you can include an if statement in your method definition.