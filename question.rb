class Question
  attr_reader(:answer)

  def initialize
    @first_number = rand(1...20)
    @second_number = rand(2...20)
    @operator = rand(1...2)

    # Add two numbers
    if @operator == 1
      @answer = @first_number + @second_number
      @operator_symbol = "+"
    # Subtract two numbers
    else @operator == 2
      @answer = @first_number - @second_number
      @operator_symbol = "-"
    end
  end

  def question_string
    "What is #{@first_number} #{@operator_symbol} #{@second_number}?"
  end

  def correct?(input)
    if input == @answer
      return true
    else
      return false
    end
  end

end