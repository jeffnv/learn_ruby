class Array
  def sum
    self.inject(0){|sum, i|sum + i}
  end
  def square
    self.map{|i|i*i}
  end
  def square!
    self.replace(self.square)
  end
end