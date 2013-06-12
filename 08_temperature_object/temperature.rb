class Temperature
  
  attr_reader :f_temp, :c_temp
  
  def initialize(temps = {})
    if(temps[:f] != nil)
      @f_temp = temps[:f]
      @c_temp = ftoc(@f_temp)
    elsif(temps[:c]!= nil)
      @c_temp = temps[:c]
      @f_temp = ctof(@c_temp)
    else
      @c_temp = 0
      @f_temp = 0
    end
  end
  
  def in_celsius
    @c_temp
  end
  
  def in_fahrenheit
    @f_temp
  end
  
  def ftoc(input)
    result = input *  5.0
    result /= 9.0
    result -= 17.77777777777
    result.round(1)
  end

  def ctof(input)
    result = input * 9.0
    result /= 5.0
    result += 32
    result.round(1)
  end
  
end