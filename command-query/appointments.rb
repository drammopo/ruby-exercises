class Appointments

  def initialize
    @slots = []
  end

  def earliest
    return nil if @slots.count == 0
    @slots.sort.first
  end

  def at(appointment)
    @slots << appointment
  end
end
