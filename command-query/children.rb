class Children
  attr_reader :list_of_children
  def initialize
    @list_of_children = []
  end

  def <<(child)
    @list_of_children << child
  end

  def eldest
    list_of_children.sort_by { |child| child.age }.last
  end
end
