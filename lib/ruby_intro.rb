# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sum = 0
  for i in arr 
  	sum += i
  end
  return sum
end

def max_2_sum arr
	if arr.empty?
		return sum = 0
	end
	if arr.length == 1
		sum = arr[0]
		return sum
	end
  sum = 0
  arr = arr.sort
  sum = arr[-1] + arr[-2]
  return sum

end

def sum_to_n? arr, n
  if arr.empty?
  	return false
  end
  if arr.length == 1
  	return false
  end
  arr = arr.combination(2).to_a
  for i,j in arr
  	if n == i + j
  		return true
  	end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
    if s.scan(/^[^\W | ^\d | ^AEIOUaeiou]/).empty?
    	return false
    end
    
	return true


end

def binary_multiple_of_4? s
  b = s.to_i(2)
  if b == 0 && !(s == "0")
  	return false
  end
  d = s.to_i(10)
  if d == 0
  	return true
  end
  if ((d>>2)<<2) == d
  	return true
  end


end

# Part 3

class BookInStock
	attr_accessor :isbn, :price

	def initialize(isbn, price)
		if isbn.empty?
			raise ArgumentError.new("isbn cannot be empty")
		end
		if price <= 0
			raise ArgumentError.new("price cannot be 0")
		end
		@isbn = isbn
		@price = price
	end

	def price_as_string 
		new_price = price.to_s
    if new_price.include?"."
      new_price = new_price + "00"
    else
      new_price = new_price + ".00"
    end
    final_price = '%.2f' % new_price
		final_price.prepend("$")
		return final_price
	end

end
