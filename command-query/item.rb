class Item
  attr_reader :name, :price, :discount, :discount_as_percentage

  def initialize(name, options)
    @name = name
    @price = options.fetch(:price)
    @discount = options.fetch(:discount)
  end

  def discount_as_percentage
    (@discount.to_f / @price.to_f) * 100
  end
end