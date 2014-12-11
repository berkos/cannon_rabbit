module CannonRabbit
  class Cannon
    include Math

    G = 9.81

    def initialize(params = {})
      @alpha = 0.0;
      @velocity = params.fetch(:velocity, 22.0)
      @g = G
      @x_impact = 0.0;
    end

    def fires(alpha)
      x_impact = ( 2 * cos(alpha.get_radians)* sin(alpha.get_radians) * (v^2) ) / g
    end
  end
end