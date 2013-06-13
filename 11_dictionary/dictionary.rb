class Dictionary
  attr_reader :entries
  def initialize
    @entries = Hash.new(:none)
  end
  
  def add(entry)
    if(entry.is_a?(Hash))
      @entries.merge!(entry)
    elsif(entry.is_a?(String))
      @entries.merge!({entry => nil})
    end
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def include?(key)
    @entries[key] != :none
  end
  
  def find(key)
    @entries.select{|k, v| k.start_with?(key)}
  end
  
  def printable
    result = ""
    @entries = @entries.sort
    @entries.each do |k,v|
      result += "[#{k}] " + '"' + v + '"' + "\n"
    end
    #get rid of the last hanging newline
    result.chop!
  end
end