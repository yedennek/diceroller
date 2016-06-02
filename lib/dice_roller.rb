class DiceRoller

  Dice = Struct.new(:number, :type, :modifier)

  def roll dice_types
   puts "Rolling #{dice_types}..."

   dice = parse dice_types
   dice_total dice
  end

  private

  def parse dice_types
    number, type, modifier = dice_types.match(/^(\d+)d(\d+)(.+\d+)?/).captures
    mod = modifier ? modifier.gsub(/\s+/, "") : 0
    Dice.new(number.to_i, type.to_i, mod.to_i)
  end

  def dice_total dice
    total = 0 
    dice.number.times { total += rand(1..dice.type) }
    total += dice.modifier
  end
end
