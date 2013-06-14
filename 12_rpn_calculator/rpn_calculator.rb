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
    opp2 = pop
    opp1 = pop
    push(yield(opp1, opp2))
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
    math{|x,y| x / y}
  end
  
  def pop
    if(@stack.count > 0)
      @stack.pop
    else
      0
    end
  end
end