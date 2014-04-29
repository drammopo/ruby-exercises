class Teeth

  def initialize
    @clean = false
  end

  def clean?
    @clean ? "The teeth should now be clean." : "The teeth should NOT be clean."
  end

  def brush
    @clean = true
  end
end
