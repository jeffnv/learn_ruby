VOWELS = ['a','e','i','o','u']

def beginning_cons_count word
  result = 1
  if
    word.split('').each_with_index do |char, i|
      if(VOWELS.include?(char) && (!((char == 'u' && (word[i - 1] == 'q')))))
        #if the vowel is a 'u' preceded by a q, consider it a consonant, keep searching for a vowel
        result = i
        break
      end
    end
  end
  
  result
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