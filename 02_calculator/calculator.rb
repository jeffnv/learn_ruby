def add num1, num2
  num1 + num2
end

def subtract num1, num2
  num1 - num2
end

def sum nums
  nums.inject(0){|accum, i|accum + i}
end

def multiply(*nums)
  nums.inject(1){|accum, i| accum * i}
end

def power(base, exponent)
  return 1 if exponent < 1
  result  = base
  (exponent - 1).times do
    result *= base
  end
  
  result
end

def factorial num
  return 1 if num < 2
  
  return num * factorial(num - 1)
end