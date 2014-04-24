class Medusa
  attr_reader :name

  def initialize(name)
    @name = name    
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    @statues << victim
  end

  def statues
    @statues
  end
end

class Person

  def initialize(name)
    @name = name
    @stoned = false   
  end

  def name
    @name
  end

  def stoned?
    @stoned
  end

  def stoned=(new_stoned)
    @stoned = new_stoned
  end
end
