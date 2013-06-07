require "time"

def measure(run_count = 1)
  result = []
  
  run_count.times do
    start = Time.now
    yield
    result << Time.now - start
  end
  
  result.inject(0){|sum, item| sum + item} / run_count.to_f
end