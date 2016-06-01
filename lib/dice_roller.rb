class DiceRoller

  Dice = Struct.new(:number, :type)

  def roll dice_types
   puts "Rolling #{dice_types}..."

   dice = parse dice_types
   dice_total dice
  end

  private

  def parse dice_types
    dice = dice_types.split('d')
    Dice.new(dice.first.to_i, dice.last.to_i)
  end

  def dice_total dice
    total = 0 
    dice.number.times { total += rand(1..dice.type) }
    total
  end

end
