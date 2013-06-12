class Book
  def initialize (title = "")
    @title = title
  end
  
  def title=(title)
    arr = title.split
    arr[0] = capitalize(arr[0], true)
    arr = arr[1..-1].map{|word|capitalize(word)}
    @title = arr.join(' ')
  end
  
  attr_reader :title
  
  IGNORE_LIST = %w(and or the to from when a an in)
  def capitalize(word, force_capital = false)
    if(force_capital)
      word.upcase
    elsif(!IGNORE_LIST.include?(word.downcase))
      word.upcase
    else 
      word
    end
    
  end
end