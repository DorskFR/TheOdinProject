# Define a fizz_buzz method that takes any Integer as parameter, and returns an array from 1 to that Integer, with:

#     All multiples of 3 replaced by “Fizz”
#     All multiples of 5 replaced by “Buzz”
#     All multiples of 15 replaced by “FizzBuzz”

# Example:
# fizz_buzz(16) will return => [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16]

def fizz_buzz(user_int)
  arr = []
  for i in 1..user_int
    if i % 3 == 0 && i % 5 == 0
      arr.push("FizzBuzz")
    elsif i % 5 == 0
      arr.push("Buzz")
    elsif i % 3 == 0
      arr.push("Fizz")
    else
      arr.push(i)
    end
  end
  return arr
end

def fizz_buzz_map(user_int)
  return (1..user_int).map{ |x|
  if x % 3 == 0 && x % 5 == 0
    x = "FizzBuzz"
  elsif x % 5 == 0
    x = "Buzz"
  elsif x % 3 == 0
    x = "Fizz"
  else
    x = x
  end
  }
end

while true
  user_int = 0
  until user_int > 1
    puts "Enter an integer:"
    print "> "
    user_int = gets.chomp.to_i
  end

  p fizz_buzz(user_int)
  p fizz_buzz_map(user_int)
end