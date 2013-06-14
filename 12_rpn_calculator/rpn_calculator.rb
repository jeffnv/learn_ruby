class RPNCalculator
  def value
    @stack[-1]
  end
  
  def initialize
    @stack = []
  end
  
  def push(value)
    @stack<< value
  end
  
  def math
    opp2 = @stack.pop
    opp1 = @stack.pop
    if(!opp2 || !opp1)
      raise "calculator is empty"
      @stack << opp1 if opp1
      @stack << opp2 if opp2
    else
      push(yield(opp1, opp2))
    end
  end
  
  def plus
    math{|x,y| x + y}
  end
  
  def minus
    math{|x,y| x - y}
  end
  
  def times
    math{|x,y| x * y}
  end
  
  def divide
    math{|x,y| x.to_f / y.to_f}
  end
  
  def tokens(str)
    tks = str.split
  end

end