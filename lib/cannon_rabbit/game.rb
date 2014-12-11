module CannonRabbit
  require_relative 'cannon'
  require_relative 'rabbit'

  class Game

    KILLING_DISTANCE = 10.0 # we set the distance to get the rabbit

    attr_accessor :cannon, :rabbit

    def initialize output
      @output=output
      @cannon = Cannon.new
      @rabbit = Rabbit.new
    end

    def start
      @output.puts 'Welcome to the Cannon Rabbit game! Make sure you get the rabbit. Someone is really hungry!'
      @output.puts 'So.. you can play until you get the rabbit. on each round you can choose a new firing angle (aplha) for the cannon to shoot. Rabbit moves so think wise!'
      @output.puts ""
    end

    def did_we_get_the_rabbit?
      (cannon.x_impact - rabbit.current_position).abs < KILLING_DISTANCE
    end

    def success_message tries
      @output.puts "Good news! you get the rabbit after #{tries}.\n Rabbit was at #{@rabbit.current_position} and your impact at #{@cannon.x_impact}"
    end
  end
end