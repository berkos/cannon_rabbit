require 'spec_helper'
module CannonRabbit
  describe Rabbit do
    let(:rabbit)   { Rabbit.new }

    describe "#next_move" do
      it "moves the initial position MOVING DINSTANCE left or right" do
        rabbit.next_move
        expect(rabbit.current_position).to be_within(Rabbit::MOVING_DISTANCE).of(57.3)
      end
    end
  end
end