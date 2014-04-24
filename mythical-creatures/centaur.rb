class Centaur
  attr_reader :name, :breed
  
  def initialize(name, breed)
    @name = name
    @breed = breed  
    @mood = 0
    @standing = true
  end

  def shoot
    return "NO!" if laying?
    @mood -= 1
    cranky? ? "NO!": "Twang!!!"
  end

  def run
    return "NO!" if laying?
    @mood -= 1
    cranky? ? "NO!": "Clop clop clop clop!!!"
  end

  def cranky?
    @mood <= -3
  end

  def lay_down
    @standing = false
  end

  def laying?
    @standing == false
  end

  def stand_up
    @standing = true
  end

  def standing?
    @standing == true
  end

  def sleep
    return "NO!" if standing?
    @mood = 0
  end
  
end