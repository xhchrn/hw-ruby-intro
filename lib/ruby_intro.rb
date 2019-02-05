# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  else
    return arr.reduce(:+)
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    # start with the first two numbers to record two vars:
    # `first` and `second`.
    second, first = arr[0,2].minmax
    # iterate over the array to update `first` and `second`
    for num in arr[2,arr.length-2] do
      if num > first
        second = first
        first = num
      elsif num > second
        second = num
      end
    end
    return (first + second)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  else
    0.upto(arr.length-2) do |i|
      (i+1).upto(arr.length-1) do |j|
        if (arr[i] + arr[j]) == n
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  consonant = /[a-zA-Z&&[^aeiouAEIOU]]/
  return (consonant.match(s[0]) != nil)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return ((/[^01]/.match(s) == nil) and ((s == "0") or (s[s.length-2, 2] == "00")))
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if (isbn == "") or (price <= 0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end
  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price
    @price
  end
  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    "\$%.2f" % @price
  end
end
