describe DiceRoller do
  descibe "#roll" do
    it "returns number between 1 and 6 given 1d6" do
      expect(subject.roll '1d6').to be_between(1,6).inclusive 
    end
  end
end
