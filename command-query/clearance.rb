class Clearance

  def initialize
    @items = []
  end

  def best_deal
    return nil if @items.count == 0
    @items.sort_by{ |item| item.discount_as_percentage }.last.name
  end

  def <<(item)
    @items << item
  end
end