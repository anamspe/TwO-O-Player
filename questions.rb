class Question
  def question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2

    "what is #{@num1} plus #{@num2}?"
  end

  def validate_answer(answer)
    answer == @answer
  end
end


