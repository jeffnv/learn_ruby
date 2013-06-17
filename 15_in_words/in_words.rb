class Fixnum
  
def wordify (number)
  singles     = ['', 'one', 'two', 'three', 'four','five','six','seven','eight','nine']
  tens        = %w(zeroen ten twenty thirty fourty fifty sixty seventy eighty ninety)
  teens       = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  number      = number.magnitude % 1000 # keep it legal

  puts "over 100 = #{number / 100}"
  first_part  = ""
  first_part  = (singles[number / 100] + " hundred") if number >= 100


  last_part   = ""
  number      = number % 100 # get it to the last two digits
  case number
  when 0
    last_part = ""
  when 1..9
    last_part = singles[number]
  when 10..19
    last_part = teens[number % 10]
  else
    last_part = tens[number / 10] + " " + singles[number%10]
  end
  
  (first_part + ' ' + last_part).strip
end
  
  # def in_words
  #   if(self.is_a? Integer)
  #     singles = ['', 'one', 'two', 'three', 'four','five','six','seven','eight','nine']
  #     tens = %w(ten twenty thirty fourty fifty sixty seventy eighty ninety)
  #     mag = ['', 'hundred', 'thousand', 'million', 'billion', 'trillion']
  #     teens = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  #     val = self
  #     count = self.to_s.length
  #     result = ""
  #     
  #     
  #     
  #     count.times do |index|
  #       magnitude = (count - index - 1)
  #       num
  #       
  #       
  #       
  #       val = val % (10 ** magnitude)
  #       if(magnitude <= 1)#less than 100
  #         case 
  #           result =  teens[val % 10]
  # 
  #         if(self < 10 && self >= 0)
  #           singles[self]
  #         end
  #         val
  #       else 
  #       end
  # 
  #     end
  #   end
  #   result
  # end
end