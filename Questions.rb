class Questions
  
  def initialize
    @firstNumber = rand(1..20)
    @secondNumber = rand(1..20)
    @real_answer = @firstNumber + @secondNumber
  end

  def compare_answer(answer)
    answer == @real_answer
  end

  def ask_question
    "What is #{@firstNumber} plus #{@secondNumber} equal?"

  end

end

