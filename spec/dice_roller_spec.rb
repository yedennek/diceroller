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

    context "given modifiers" do
      before :each do
        srand(2) #Seed rand so we can get known test data
      end

      it "returns 3 when given 1d6 + 2" do
        expect(subject.roll "1d6 + 2").to eq 3
      end

      it "returns -1 when given 1d6 - 2" do
        expect(subject.roll "1d6 - 2").to eq -1
      end

      it "ignores whitespace returns 3 when given 1d6+2" do
        expect(subject.roll "1d6+2").to eq 3
      end
    end
  end
end
