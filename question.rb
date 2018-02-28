require './questions'

class Question

  attr_accessor :num

  def initialize()
    @num = 7
  end


  def ask
    puts @questions[@num].message
  end


  def check
    @num = @num - 1

    player_answer = player_answer.chomp

    @questions[@num + 1].answer == player_answer ?
    true : false
  end
end
