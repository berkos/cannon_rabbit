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
        expect(output).to receive(:puts).with("So.. you can play until you get the rabbit. on each round you can choose a new firing angle (aplha) for the cannon to shoot. Rabbit moves so think wise!\n")
        game.start
      end
    end

    describe "#did_we_get_the_rabbit?" do
      it "doesnt get the rabbit" do 
        game.cannon.fires(22.0)
        expect(game.did_we_get_the_rabbit?).to be false
      end
      it "does get the rabbit" do 
        game.cannon.fires(44.0)
        expect(game.did_we_get_the_rabbit?).to be true
      end
    end
  end
end