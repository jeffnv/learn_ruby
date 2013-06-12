class Book
  
  IGNORE_LIST = %w(and or the to from a an in of this)
  ALWAYS_LIST = %w(i)
  attr_reader :title
  
  def initialize (input = "")
    self.title = input
  end
  
  def title=(title)
    arr = title.split
    arr[0] = capitalize(arr[0], true)
    arr[1..-1] = arr[1..-1].map{|word|capitalize(word)}
    @title = arr.join(' ')
  end
  
  
  

  def capitalize(word, force_capital = false)
    force_capital = true if ALWAYS_LIST.include?(word.downcase)
    
    if(force_capital)
      word.capitalize
    elsif(!IGNORE_LIST.include?(word.downcase))
      word.capitalize
    else 
      word
    end
  end
end