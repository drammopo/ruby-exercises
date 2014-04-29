class Catalogue

  def initialize
    @catalogue = []
  end

  def cheapest
    return nil if @catalogue.count == 0
    @catalogue.sort_by{|product| product.price}.first.name
  end

  def <<(product)
    @catalogue << product
  end
end