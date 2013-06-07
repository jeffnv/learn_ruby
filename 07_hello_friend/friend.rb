class Friend
  def greeting(name = nil)
    if(name != nil)
      name = ", #{name}"
    end
    greeting = "Hello#{name}!"
  end
end