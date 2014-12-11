require 'spec_helper'
module CannonRabbit
  describe Cannon do
    let(:output) { double('output').as_null_object }
    let(:cannon)   { Cannon.new }

    describe "#fires" do
      it "makes sure it function returns the correct result with input 22.0" do
        alpha = 22.0
        expect(cannon.fires(alpha)).to be 34.27264539267632
      end

      it "makes sure it function returns the correct result with input 33.0" do
        alpha = 33.0
        expect(cannon.fires(alpha)).to be 45.07196753302944
      end

      it "makes sure it returns a Float" do
        alpha = 33.0
        expect(cannon.fires(alpha).class).to be Float
      end
    end
  end
end