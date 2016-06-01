require "dice_roller"

describe DiceRoller do
  describe "#roll" do
    context "given xdx" do
      it "returns number between 1 and 12" do
        expect(subject.roll '3d4').to be_between(1,12).inclusive 
      end

      it "returns number between 1 and 36" do
        expect(subject.roll '6d6').to be_between(1,36).inclusive
      end

      it "returns number between 1 and 40" do
        expect(subject.roll '4d10').to be_between(1,40).inclusive 
      end

      it "returns number between 2 and 12" do
        expect(subject.roll '2d12').to be_between(1,24).inclusive 
      end

      it "returns number between 1 and 20" do
        expect(subject.roll '1d20').to be_between(1,20).inclusive 
      end
    end 
  end
end
