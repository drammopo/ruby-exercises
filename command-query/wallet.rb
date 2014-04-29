class Wallet

DENOMINATIONS = {:penny => 1, :nickel => 5}

  def initialize
    @wallet = {}
    @total = 0
  end

  def <<(coin)
    @wallet.has_key?(:coin) ? @wallet[:coin] += 1 :  @wallet[:coin] = 1
  end

  def cents
    return 0 if @wallet.empty?
    total = @wallet.values.inject(0){ |result, n| result + n}
  end
end