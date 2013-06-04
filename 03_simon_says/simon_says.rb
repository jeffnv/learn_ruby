def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, count = 2)
  res = Array.new(count, str).join(' ')
end

def start_of_word(str, count)
  str[0...count]
end

def first_word(str)
  str.split[0]
end

def titleize(str)
  lil_words = 'over and the'.split
  arr = str.split
  arr[0].capitalize!
  arr[0..-1].map!{|word|word.capitalize! if !(lil_words.include?(word))}
  arr.join(' ')
end