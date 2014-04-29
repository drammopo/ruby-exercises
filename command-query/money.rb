class Money
  attr_reader :amount

  def initialize
    @amount = 0
  end

  def spend(amount)
    @amount -= amount
  end

  def earn(amount)
    @amount += amount
  end
end
