class Wallet
  attr_reader :total

DENOMINATIONS = {:penny => 1, :nickel => 5, :dime => 10, :quarter => 25, :dollar => 100}

  def initialize
    @wallet = {}
    @total = 0
  end

  def <<(coin)
    @wallet.has_key?(coin) ? @wallet[coin] += 1 :  @wallet[coin] = 1
  end

  def cents
    return @total if @wallet.empty?
    DENOMINATIONS.each { |k,v| @total = v * @wallet[k] if @wallet.has_key?(k)  }
    @total
  end

  def take(*coin)
    @wallet.has_key?(coin) ? @wallet[coin] -= 1 :  nil
  end
end