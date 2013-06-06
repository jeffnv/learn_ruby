def reverser
  str = yield
  str.split().map{|word| word.reverse}.join(' ')
end

def adder(val = 1)
  yield + val
end

def repeater(count = 1)
  count.times do
    yield
  end
end