require_relative 'float'
include Math
module CannonRabbit
  class Cannon
    G = 9.81

    attr_accessor :velocity, :g
    attr_reader :x_impact

    def initialize(params = {})
      @alpha = 0.0;
      @velocity = params.fetch(:velocity, 22.0)
      @g = G
      @x_impact = 0.0;
    end

    def fires(alpha)
      @x_impact = ( 2 * cos(alpha.get_radians)* sin(alpha.get_radians) * ( velocity ** 2) ) / g
    end
  end
end