require 'spec_helper'
module CannonRabbit
  describe Game do
    let(:output) { double('output').as_null_object }
    let(:game)   { Game.new(output) }

    describe "#start" do
      it "sends a welcome message" do
        expect(output).to receive(:puts).with('Welcome to the Cannon Rabbit game! Make sure you get the rabbit. Someone is really hungry!')
        game.start
      end

      it "explains the rules of the game" do
        expect(output).to receive(:puts).with('So.. you can play until you get the rabbit. on each round you can choose a new firing angle (aplha) for the cannon to shoot. Rabbit moves so think wise!')
        game.start
      end
      it "prompts for the first firing angle" do
        expect(output).to receive(:puts).with('Go for it: pick your first firing angle')
        game.start
      end
    end
    # describe "#guess" do
    #   it "sends the mark to output" do
    #     game.start('1234')
    #     output.should_receive(:puts).with('++++')
    #     game.guess('1234')
    #   end
    #end
  end
end