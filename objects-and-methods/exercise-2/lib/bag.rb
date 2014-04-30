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

  def grab(candy)
    candy = @candies.detect{ |c| c.type == candy }
    @candies.delete(candy)
    candy
  end

  def take(number_of_candies)
    return @candies.pop if number_of_candies == 1
    @candies.pop(number_of_candies)
  end
end
