class Adult

  def initialize
    @number_of_drinks = 0
  end

  def sober?
    @number_of_drinks < 3
  end

  def consume_an_alcoholic_beverage
    @number_of_drinks += 1
  end
end