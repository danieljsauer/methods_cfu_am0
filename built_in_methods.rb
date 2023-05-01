# SECTION 1: Calling methods on string or integer objects.
# Run each line of code below (either from this file or in IRB individually).
# Then, in a ruby comment, write 1-2 sentences describing what is happening, using ALL the involved vocabulary terms you've learned in this lesson so far.

# EXAMPLE
# The downcase method is called on the string object "Hello World"
# No arguments are passed; downcase has one clear job which is to lowercase all letters that exist in the String
# The return value is "hello world"
puts "Hello World".downcase

#Google has been unhelpful for this simple question. Are puts/print/p by definition methods or are they commands?  

#The include? method is called on the string object "Hello World", with an argument of "Hello"
#The include? method checks to see if the argument "Hello", is include in the string object "Hello World"
#Since "Hello" is indeed included in "Hello World", the value of true is returned.
#I have added a puts command to check the return value, and it is indeed returning a value of "true"
puts "Hello World".include?("Hello")

#The end_with? method is calling on the string object "Hello World", with an argument of "Hello"
#The end_with? method checks to see if the argument "Hello", is the last set of characters(Is this the correct way to think about it? Since a string is composed of a set(array?) of characters?) in the string obejct "Hello World"
#Since "Hello" is not the final character set of "Hello World", it returns a value of false.
#I have added the puts command in front of this line of code to check the return value, and it is indeed returning false. 
puts "Hello World".end_with?("Hello")

#Same as above, the method end_with is calling on the string object "Hello World". This time the argument has been changed to the characters "rld"
#The end_with? method checks to see if the argument "rld" is the last set of characters in the string object "Hello World"
#Since "rld" is indeed the final chacters in "Hello World", the value of true is returned.
#I have added the puts command to check the return value, and it is indeed returning true. 
puts "Hello World".end_with?("rld")

#The .even? method is called on the integer object 12.
#The .even? method will check to see if the integer object it is being called upon is an even value aka divisible by 2. 
#Since 12/2 = 6 or 12 % 2 = 0, 12 is indeed divisble by 2 and will return a value of true. 
#I have added the puts command to check the return value, and it is indeed returing true. 
puts 12.even?

#The .next method is called upon the integer object of 18.
#The.next method will output the next number following the integer object, essentially adding 1.
#The return value will be 19 since 19 follows 18, or 18+1 = 19. 
#The puts command displays a return value of 19. 
puts 18.next



# SECTION 2: Calling methods on variables assigned to strings.
# Declare 2 variables assigned to string objects.
# Call a different built-in Ruby method on each of your variables. 
# https://ruby-doc.org/core-3.1.0/String.html
# Include comments above each method call explaining the impact and return value of that method.


# EXAMPLE
# The start_with? method is called on the first_name variable, which stores the string object "Jeff". 
# The start_with? method returns true if the data in the first_name variable starts with the argument passed in.
# In this example, the return value is true, because "Jeff" does start with "J".
# The puts command prints the return value of the start_with? method (true) to the console.
first_name = "Jeff"
puts first_name.start_with?("J")

#I am going to define my variables up here so that way I only have to define them once and can then call upon them with multiple methods after that. 
greeting = "Hello Everyone!"
name = "Daniel"

#The reverse method is called upon the variables "greeting" and "name", which each store the string objects that have been assigned above.
#The reverse method returns the characters of the string variables in reverse order.
#In this case, greeting.reverse will return ="!enoyrevE olleH" for the greeting variable (including punction and spaces) and "leinaD" for the name variable.
puts greeting.reverse
puts name.reverse

#The replace method is called upon the variable "greeting", which stores the string object "Hello Everyone!"
#The string argument found within the replace method will replace the string object that was assigned to the variable it is being called up.
#In this case "Hello everyone!" is replaced with "Hola a todos!"in the greeting variable.
#A good thing to note about this method, the change is permanenet. There is no replace! command, so once the replace method is called upon the "greeting" variable, "greeting" will now always return "Hola a todos!"
#The puts command will return greeting with its new string object that is being argued. I ran puts again to show that the change is persistent. 
#Side note, I know basically zero spanish so please blame google translate if this is incorrect. 
puts greeting.replace("Hola a todos!")
puts greeting



# SECTION 3: Calling methods on variables assigned to integers.
# Declare 2 variables assigned to integer objects.
# Call a different built-in Ruby method on each of your variables. 
# https://ruby-doc.org/core-3.1.0/Integer.html
# Include comments above each method call explaining the impact and return value of that method.

denver_broncos = 50
kc_chiefs = 3
dream = "in my dreams..."

#The .to_s method is called upon the variable denver_broncos which stores the integer object of 50.
#The .to_s method converts the integer variable it is called upon into a string variable. 
#In this case, the interger object of 50 with the variable denver_broncos has been converted to a string object of "50". Therefore the variable denver_broncos will now return "50" when called upon.
#I have made an if statement to prove that the variable has been coverted into a string.


    denver_broncos = denver_broncos.to_s
    if denver_broncos == "50"
        puts "Variable is now a string"
    end 
#Note this change into a string is permenant. 
    puts denver_broncos.reverse

#The .pred method is called upon the variable kc_chiefs which has been assigned the integer object of 3.
#the .pred method will return the number that came before the current integer value, essenitally integer - 1.
#Therefore in this example kc_chiefs.pred will return a value of 2 since 2 comes before 3 or 3 - 1 = 2 
puts kc_chiefs.pred

# SECTION 4: Calling methods on variables assigned to arrays.
# Declare 2 variables assigned to arrays.
# Call a different built-in Ruby method on each of your variables. 
# https://ruby-doc.org/core-3.1.0/Array.html
# Include comments above each method call explaining the impact and return value of that method.


favorite_colors =["Red", "Blue", "Black", "White"]
favorite_nums = [1,8,27,56,87]

#The .rotate! method is called upon the variable favorite_colors, which is a string array. 
#The .rotate! method will take the first element in the array and place it at the back. An intger within a () can be placed at the end of this method call to modify where the rotation will begin.
#If (2) is placed after .rotate, it will rotate the values in index 0, and 1 to the back of the array. It moves them together, it does not just pull out single index values. There are .rotate and .rotate! versions of this method, with the ! making the changes permenant. 
#In the example below, the favorite_colors array will now return a new array that begins with "Blue" at index position 0. 
puts favorite_colors.rotate!

#The .delete method is called upon the variable favorite_nums which is an integer array.
#The delete method will delete the argued integer from the variable. 
#In this example the argued value of 56 is deleted from the array. favorite_nums will now return an array that does not include the integer of 56. 
favorite_nums.delete_at(3)
puts favorite_nums
#I added the delete at method to learn a new way of doing this. 

favorite_nums.delete(56)
puts favorite_nums
