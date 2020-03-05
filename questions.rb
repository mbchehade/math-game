class Question

  def initialize
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @operator = [:+, :-].sample
    @answer = @number1.send(@operator, @number2) 
  end

  def correct?(answer)
    @answer == answer
  end

  def to_s
    "#{@number1} #{@operator} #{@number2}"
  end
end