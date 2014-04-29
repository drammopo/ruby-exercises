class Tire

  def initialize
    @flat = false
  end

  def flat?
    @flat ? "I ran over a nail!" : "This tire is brand new"
  end

  def blow_out
    @flat = true
  end
end
