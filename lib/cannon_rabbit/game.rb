module CannonRabbit
  require_relative 'cannon'
  class Game
    def initialize(output)
      @output=output
      @cannon = Cannon.new
    end

    def start
      @output.puts 'Welcome to the Cannon Rabbit game! Make sure you get the rabbit. Someone is really hungry!'
      @output.puts 'So.. you can play until you get the rabbit. on each round you can choose a new firing angle (aplha) for the cannon to shoot. Rabbit moves so think wise!'
      @output.puts ""
      @output.puts 'Go for it: pick your first firing angle'

    end
  end
end