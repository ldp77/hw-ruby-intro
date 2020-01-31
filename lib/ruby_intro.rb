# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  end
  
  total = 0
  arr.each do |item|
    total += item
  end
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  end
  
  if arr.length() == 1
    return arr[0]
  end
  
  # Find max of initial array
  max1 = arr[0]
  arr.each do |item|
    if item > max1
      max1 = item
    end
  end
  
  # Remove max1 from array
  arr.delete_at(arr.index(max1) || arr.length())
  
  # Find max of array after max1 is removed
  max2 = arr[0]
  arr.each do |item|
    if item > max2
      max2 = item
    end
  end
  
  return max1 + max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length() < 2
    return false
  end
  
  for i in 0..arr.length()-1 do
    for j in i+1..arr.length()-1 do
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  
  return false
    
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s == ''
    return false
  end
  
  consonants = [
    'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'
  ]
  firstChar = s[0].downcase
  return consonants.include? firstChar
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  
  return /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE

  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError
    end
    
    if price <= 0
      raise ArgumentError
    end
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f" % @price
  end  
end
