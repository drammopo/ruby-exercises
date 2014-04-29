class MilkBottle

  def initialize
    @full = true
  end

  def spill
    @full = false
  end

  def full?
    @full ? "The bottle should be full." : "The bottle should no longer be full."
  end
end
