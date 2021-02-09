# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.inject(0, :+)
  
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    max1 = 0
    max2 = 0
  else
    max1 = arr.max
    arr.delete_at(arr.index(max1))
    if arr.empty?
      max2 = 0
    else
      max2 = arr.max
    end
    
  end
  sum = max1+max2
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0...arr.length
    dlt_ele = arr[i]
    dlt_index = arr.index(dlt_ele)
    arr.delete_at(dlt_index)
    if arr.include?(n - dlt_ele)
      return true
    end
    arr.insert(dlt_index, dlt_ele)
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, #{name}"
  return str
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    consonant = false
  elsif not s.match?(/^[A-Za-z]/) #if nonletter
    consonant = false
  else
    str = s.downcase
    consonant = str.match?(/^[a-z&&[^aeiou]]/)
  end
  return consonant
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    ismult = false
  elsif s.match?(/[A-Za-z]/) #contain letters
    ismult = false
  else #multiple of 4 or 0
    ismult = s.match?(/(0|1)*00$/) || s.match?(/^[^1]$/) #binary number ending with 00 is always multiple of 4
  end
  return ismult
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)
  raise ArgumentError, "isbn cannot be an empty string!" if isbn.empty?
  raise ArgumentError, "price cannot be less than or equal to 0!" if price <= 0
  @isbn = isbn
  @price = price
end
#getters
def isbn
  @isbn
end
def price
  @price
end
#setters
def isbn=(isbn)
  @isbn = isbn
end
def price=(price)
  @price = price
end
#return price of the book formatted. ex) 20 -> $20.00, 33.8 -> $33.80
def price_as_string
  price_str = @price.to_s + " "
  if price_str.match?(/\d+.\d\s/)
    return "$#{@price}0"
  elsif not price_str.match?(/\d+.\d/)
    return "$#{@price}.00"
  else
    return "$#{@price}"
  end

end
end
