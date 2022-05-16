############################################################
# 
# Download this file on your mac, and change the permission
# `chmod 755 code_challenge_2.rb`
# Run it `ruby code_challenge_2.rb`
# 
############################################################

def right
  "\e[32mRIGHT\e[0m"
end

def wrong
  "\e[31mWRONG\e[0m"
end

def title(str)
  "\e[33m#{str}\e[0m"
end


# Task 1:
# write a method that will multiply the content of the array by any given number
# e.g an array of multiply([2,4,6], 5) -> [10,20,30]

def multiply(array, factor)
  new_array = []
  array.each do |value|
    result = value * factor
    new_array.push(result)
  end
  new_array
end
puts title("Task 1")
puts multiply([2,4,6], 5) == [10,20,30] ? right : wrong
puts multiply([2,4,6,7,1], 3) == [6,12,18,21,3] ? right : wrong
puts multiply([2.5,4.5], 3) == [7.5,13.5] ? right : wrong

# Task 2:
# now i want you to ROUND UP the answer before returning
# e.g multiply([2.1,4.7], 2) -> [5,10]
def multiply(array, factor)
  new_array = []
  array.each do |value|
    result = value * factor
    total_rounded = (result/1.0).ceil * 1
    new_array.push(total_rounded)
  end
  new_array
end
puts title("Task 2")
puts multiply([2,4,6], 5) == [10,20,30] ? right : wrong
puts multiply([2,4,6,7,1], 3) == [6,12,18,21,3] ? right : wrong
puts multiply([2.1,4.7], 2) == [5,10] ? right : wrong

# Task 3:
# now i want you to filter the answer that is an even number
# e.g multiply([2,3,4,5], 3) -> [9,15]

def multiply(array, factor)
  new_array = []
  array.each do |value|
    result = value * factor
    total_rounded = (result/1.0).ceil * 1
    if total_rounded.odd?
      new_array.push(total_rounded)
    end
  end
  new_array
end
puts title("Task 3")
puts multiply([2,4,6], 5) == [] ? right : wrong
puts multiply([2,4,6,7,1], 3) == [21,3] ? right : wrong
puts multiply([2.1,4.7], 2) == [5] ? right : wrong
puts multiply([2,3,4,5], 3) == [9,15] ? right : wrong

