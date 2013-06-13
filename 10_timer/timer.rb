class Timer
  
  attr_accessor :seconds
  
  def initialize(time = 0)
    @seconds = time
  end
  
  def time_string
    hours = @seconds/3600
    minutes = (@seconds - hours * 3600) / 60
    seconds = @seconds - (hours * 3600) - (minutes * 60)
    "#{pad(hours,2)}:#{pad(minutes,2)}:#{pad(seconds,2)}"
  end
  
  #although if hours are greater...
  def pad(val, number_of_places)
    str = val.to_s
    while(str.length < number_of_places) do
      str = '0' + str
    end
    str
  end
  
end