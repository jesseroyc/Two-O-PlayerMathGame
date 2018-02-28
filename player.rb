class Player
  
  attr_accessor :name
  attr_accessor :lives
  
  def initialize(new_name)
    @name = new_name
    @lives = 3
    puts "Player handler created...\n" +
         "@name #{@name}" + "\n" +
         "@lives #{@lives}"
  end


  def loose_life
  	@lives = @lives - 1
  end
end