class Arena
  attr_accessor :name, :gladiators
  def initialize(name)
    @name = name.capitalize!
    @gladiators = []
  end

  def add_gladiator(gladiator)
    if @gladiators.length < 2
      @gladiators.push(gladiator)
    end
  end

  def fight
    if @gladiators.length == 2
      if @gladiators[0].weapon == @gladiators[1].weapon
        @gladiators.pop(2)
      elsif @gladiators.first.weapon == 'Trident' && @gladiators.last.weapon == 'Spear'
        @gladiators.delete_at(1)
      elsif @gladiators.first.weapon == 'Spear' && @gladiators.last.weapon == 'Club'
        @gladiators.delete_at(1)
      elsif @gladiators.first.weapon == 'Club' && @gladiators.last.weapon == 'Trident'
        @gladiators.delete_at(1)
      elsif @gladiators.first.weapon == 'Spear' && @gladiators.last.weapon == 'Trident'
        @gladiators.delete_at(0)
      elsif @gladiators.first.weapon == 'Club' && @gladiators.last.weapon == 'Spear'
        @gladiators.delete_at(0)
      elsif @gladiators.first.weapon == 'Trident' && @gladiators.last.weapon == 'Club'
        @gladiators.delete_at(0)
      end
    end
  end
end
