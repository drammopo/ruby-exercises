class Wallet
  DENOMINATIONS = {:penny => 1, :nickel => 5, :dime => 10, :quarter => 25, :dollar => 100}

  def initialize
    @wallet = {}
    @total = 0
  end

  def <<(coin)
    @wallet.has_key?(coin) ? @wallet[coin] += 1 :  @wallet[coin] = 1
  end

  def cents
    new_wallet = @wallet.inject({}) do |h, (k,v)| 
      h[k] = v * DENOMINATIONS[k] if DENOMINATIONS.has_key?(k)
      h
    end
    @total = new_wallet.values.inject(0, :+) # initialize at zero removed need to return @total if @wallet.empty?
  end

  def take(*coins)
    coins.each do |coin|
      @wallet.has_key?(coin) ? @wallet[coin] -= 1 :  nil
    end
  end
end