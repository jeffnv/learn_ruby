VOWELS = ['a','e','i','o','u']

def beginning_cons_count word
  #find the first non consonant
  # word.split('').each_with_index do |char, i|
  #   if(VOWELS.include?(char))
  # end
  1
end

def latinafy(word)
  
  if(! VOWELS.include?(word[0]))
    word_arr = word.split('')
    num_of_cons = beginning_cons_count(word)
    cons = word[0...num_of_cons]
    word_arr << cons
    word = word_arr[num_of_cons..-1].join('')
  end
  word += "ay"
end

def translate (str)
  words = str.split
  words.map!{|word| latinafy(word)}
  words.join(' ')
end