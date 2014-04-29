class RollCall
  attr_reader :names
  def initialize
    @names = []
  end

  def <<(name)
    @names << name
  end

  def longest_name
    names.sort_by { |name| name.length }.last
  end
end
