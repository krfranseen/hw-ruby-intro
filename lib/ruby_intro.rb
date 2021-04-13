
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  totalSum = 0
  # Iterate over the entire array
  arr.each { |x| totalSum = totalSum + x}
  totalSum
end

def max_2_sum arr
  returnSum = 0
  # First check if the array is small
  if arr.length() == 1
    returnSum = arr[0]
  elsif arr.length() > 1
    largest = arr.max()
    arr.delete_at(arr.index(largest))
    second_largest = arr.max()
    returnSum = largest + second_largest
  end
  returnSum 
end

def sum_to_n? arr, n
  returnBool = false
  if arr.length() > 1
    arr.each { |x| 
      # Check if the difference exists in the array
        if arr.include? (n - x) and (n - x) != x
        returnBool = true
        break
      end
    }
  end
  returnBool
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  returnBool = true
  vowels = ['A', 'a', 'E', 'e', 'I', 'i', 'O', 'o', 'U', 'u']
  if (s.empty?) or (vowels.include? s[0]) or (not s[0].match?(/[A-Za-z]/))  
    returnBool = false
  end
  returnBool
end

def binary_multiple_of_4? s
  returnBool = true
  # Check that each char is 1 or 0
  s.each_char { |c| 
    if (c != "0" and c != "1")
      returnBool = false
      break
    end
  }

  # Convert string to binary
  if returnBool == true
      intVal = s.to_i(2)
    if (intVal%4 != 0) or s.length() < 1
      returnBool = false
    end
  end
  returnBool
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn,price)
  
    if (isbn.empty? or price <= 0)
      raise ArgumentError
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
