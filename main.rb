require 'pry'

require './math_game'
require './player'
require './question'
require './turn'

class Main
  	QUESTIONS_FILE_NAME = "questions"
  	PLAYERS_FILE_NAME   = "players"
  
  def start
    create_files(QUESTIONS_FILE_NAME)
    create_files(PLAYERS_FILE_NAME)
  end

  def create_files file_name
    if(File.file?("#{file_name}.rb"))
      File.delete("#{file_name}.rb")

	  File.open("#{file_name}.rb", "w+") {|f| f.write (
      "require 'active_support/all'\n" +
      "@#{file_name} = [\n\n" +
      "]}"
	  )}
  end
end

NUMBER_OF_PLAYERS = 2

main = Main.new
main.start

game = Math_game.new(NUMBER_OF_PLAYERS)
game.start

binding.pry
end