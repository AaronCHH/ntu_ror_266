
## Comments
Great work! For our last review exercise for this lesson, let's go over single- and multi-line comments.

## Instructions
Create a single-line comment and a multi-line comment in the editor to the right. (Check the Hint if you need a reminder on the syntax.) Hit Save & Submit Code to see your glorious comments and complete the Introduction to Ruby!

```ruby
# this is a comment
=begin
    puts "hello"
=end
```
## What You'll Be Building
This project will help you create a small program that will read a user's input and correct his or her capitalization. Users can provide an almost infinite range of input, so it makes our lives easier as programmers to make their input standard before doing anything with it.

### Instructions
Check out the code in the editor—we've added some new things that we'll be teaching you. Can you guess what it does? Click Save & Submit Code to find out!

```
print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

print "What city are you from?"
city = gets.chomp
city.capitalize!

print "What state or province are you from?"
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"
```

## Prompting the User
First, let's write the code we're already familiar with. In order to get input from the user, we'll first need to print a prompt on the screen.

### Instructions
print the question "What's your first name?" to the screen. Feel free to peek back at the first exercise if you need a syntax reminder.
```
print "What's your first name?"
name = gets.chomp
puts name
```

## Getting Input
Good! Now let's try something new. You may have noticed this weird little line of code repeated in our example:
```ruby
variable_name = gets.chomp
```
gets is the Ruby method that gets input from the user. When getting input, Ruby automatically adds a blank line (or newline) after each bit of input; chomp removes that extra line. (Your program will work fine without chomp, but you'll get extra blank lines everywhere.)

### Instructions
Declare a variable first_name and set it equal to gets.chomp.

## 4. Repeat for More Input
All right! Now we need to repeat what we've done for last_name, city, and state.

### Instructions
Add print prompts, variables, and gets.chomps for the user's last name, city, and state/province. Use last_name as the variable for the user's last name, city for their city, and state for their state or province. (Hint: prompt the user to provide an abbreviation for their state or province, such as "NY" for New York. This will naturally lead us to use .upcase later!)