module CannonRabbit
  class Rabbit
    MOVING_DISTANCE = 7

    attr_accessor :velocity, :g
    attr_reader :current_position

    def initialize(params = {})
      @current_position = params.fetch(:x_0, 57.3) # user can set the initial  x_0 position of the rabbit, if not we use a default one
    end

    def next_move
      probability = Random.rand(2)
      @current_position = probability == 0 ? @current_position - MOVING_DISTANCE : @current_position + MOVING_DISTANCE # rabbit goes left or right
    end
  end
end