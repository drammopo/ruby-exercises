class Teenager
  attr_reader :sober
  def initialize
    @drunk = false
  end

  def drunk?
    @drunk
  end

  def consume_an_alcoholic_beverage
    @drunk = true
  end
end
