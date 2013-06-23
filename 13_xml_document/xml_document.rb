class XmlDocument
  def initialize(indent = false)
    @indent = indent
    @level = 0
  end
  
  def method_missing(method, *args, &block)
    attrs = args[0] || {}
    result = @indent ? "  " * @level : ""
    result << "<#{method}"
    
    attrs.each do |k,v|
      result << " #{k}='#{v}'"
    end
    
    if(block != nil)
      result << ">"
      result << "\n" if @indent
      @level += 1
      result << "#{yield}"
      @level -= 1
      result << "#{"  " * @level}" if @indent
      
      result << "</#{method}>"
      
    else
      result << "/>"
      
    end
    result << "\n" if @indent
    result
  end
end