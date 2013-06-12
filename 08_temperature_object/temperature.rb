class Temperature
  
  def self.from_celsius temp
    Temperature.new({:c => temp})
  end
  
  def self.from_fahrenheit temp
    Temperature.new({:f => temp})
  end
  
  def initialize(temps = {})
    if(temps[:f] != nil)
      @f_temp = temps[:f]
      @c_temp = Temperature.ftoc(@f_temp)
    elsif(temps[:c]!= nil)
      @c_temp = temps[:c]
      @f_temp = Temperature.ctof(@c_temp)
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
  
  def self.ftoc(input)
    result = input *  5.0
    result /= 9.0
    result -= 17.77777777777
    result.round(1)
  end

  def self.ctof(input)
    result = input * 9.0
    result /= 5.0
    result += 32
    result.round(1)
  end
  
end

class Celsius < Temperature
  def initialize(temp)
    @c_temp = temp
    @f_temp = Temperature.ctof(@c_temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @f_temp = temp
    @c_temp = Temperature.ftoc(@f_temp)
  end
end