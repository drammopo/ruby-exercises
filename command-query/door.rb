class Door

  def initialize
    @locked = true
  end

  def locked?
    @locked ? "The door should be locked." : "The door should now be unlocked."
  end

  def unlock
    @locked = false
  end
end
