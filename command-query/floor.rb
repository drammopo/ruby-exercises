class Floor

  def initialize
    @dirty = true
  end

  def dirty?
    @dirty ? "The floor should be dirty." : "The floor should be clean."
  end

  def wash
    @dirty = false
  end
end
