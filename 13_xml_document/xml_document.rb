class XmlDocument
  def initialize
  end
  
  def method_missing(method, *args, &block)
    attrs = args[0] || {}
    result = "<#{method}"
    
    attrs.each do |k,v|
      result << " #{k}='#{v}'"
    end
    
    
    
    if(block != nil)
      result << ">#{yield}</#{method}>"
    else
      result << "/>"
    end
    
    result
  end
end