class Fixnum
  
  def in_words
    if(self.is_a? Integer)
      mag       = ['', 'thousand', 'million', 'billion', 'trillion']
      val       = self
      loopCount = 0
      result    = []
      
      result << "zero" if val == 0
      
      while val > 0
        wrds    = wordify(val % 1000)
        
        if(! wrds.empty?)
          result.insert(0, wrds)
          #we don't want to add the order of magnitude thingy if its less than 1000
          result.insert(1, mag[loopCount]) if loopCount > 0
        end
        
        val /= 1000
        loopCount += 1
      end
    end
    result.join(' ')
  end
  
  private
  def wordify (number)
    singles     = ['', 'one', 'two', 'three', 'four','five','six','seven','eight','nine']
    #zeroen is totally a word
    tens        = %w(zeroen ten twenty thirty forty fifty sixty seventy eighty ninety)
    teens       = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    number      = number.magnitude % 1000 # keep it legal
  
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
  

end
