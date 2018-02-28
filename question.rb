class Question

  attr_accessor :num

  def initialize()
    @num = 3
  end

  
  def db_helper

  end


  def ask

  end


  def check
    @num = @num - 1
    true
  end
end
