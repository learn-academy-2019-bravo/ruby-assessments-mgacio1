# Ruby Assessments

#### 1. Use two different Ruby loops to loop over this array, multiplying each element by 2.

# your ruby loop here
tempArray.each do |element |
  puts element * 2
end

tempArray = [1, 2, 6, 9, 3, 21]
p tempArray.map { |n| n * 2}

#### 2. From all the built in Ruby methods we've seen in class this week, choose three that you think are particularly helpful and create examples to show how they work.

# your three built in ruby methods

# takes two numbers as arguments and uses an arithmetic operator to output result
def mult_numbers(num1, num2)
    p num1 * num2
end
mult_numbers(48, 2)
# take number as argument and determines whether odd or even. returns odd, even or enter a valid integer.

def odd_or_even(num)
    if num.class != Integer
      puts "Please enter a valid number."
    elsif num % 2 == 0
      puts "Number is even."
    else num % 2 != 0
      puts "Number is odd."
  end
end
odd_or_even(25)
odd_or_even(30)
odd_or_even('xray')
# Capitalize the days of the week
days = ["monday","tuesday","wednesday","thursday","friday"]
using .each
    days.each do |day|
        puts day.capitalize
    end
# using block
p days.each() {|day| puts day.capitalize}


#### 3. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized.

sentence = "hello there, how are you?"
# expected output = "Hello There, How Are You?"

def cap_sent (string)
  arr = string.split
  arr.each(){|str| puts str.capitalize
  newArr = arr.join(" ")}
end

p cap_sent(sentence)

#### 4.  Create a method that takes in a string and returns a new string with all the vowels removed. HINT:  there's a built in string method for this

no_vowels = "I have no vowels"
# expected output = " hv n vwls"

def remov_vow (str)
  arr1 = str.downcase
  arr1.delete("aeiou")
end

p remov_vow(no_vowels)

#### 5. Look at this horrible ruby code, and fix it to be good ruby code.

``` ruby
class example
  def initialize(day)
    @day=day
  end

  def say_hi
    if(day == "Friday")
      puts "TGIF!"
    elsif(day == "Monday")
      puts "Its monday again"
    else
      puts "another day"
    end
  end
```
#### 6a.  Create a class called Animal that initializes with a color.  Create a method in the class called legs that returns 4.

# your class here
class Animal
  def initialize (color)
    @color = color
    @legs = 4
  end

  def show_legs
    @legs
  end
end
#### 6b.  Create a new instance of an Animal with a brown color.  Return how many legs the animal has.
class Bear < Animal
  def initialize (color)
    super(color)
    @color = color
  end
end
 p my_Bear = Bear.new("Brown")
