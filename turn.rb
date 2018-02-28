class Turn

  attr_accessor :get
  attr_accessor :other
  
  def initialize(number_of_players)
  	@get = 1
  	@other = 2
    puts "Turn handler created...\n" +
         "@get #{@get}" + "\n" +
         "@lives #{@live}"
  end


  def next ()
  	puts "----- NEW TURN -----"

  	if @get == 1
  	  @get = 2
  	  @other = 1

  	else
  	  @get = 1
  	  @other =2
  	end

  end
end