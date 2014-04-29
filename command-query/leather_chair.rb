class LeatherChair
  attr_reader :faded

  def initialize
    @faded = false
  end

  def faded?
    faded ?  "New chairs are NOT faded." : "Exposed chairs are faded."
  end

  def expose_to_sunlight
    @faded = true
  end
end
