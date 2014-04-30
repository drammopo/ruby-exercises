class Bag
    attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.length == 0
  end

  def count
    @candies.length
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(candy)
    @candies.any?{ |c| c.type == candy }
  end
end
