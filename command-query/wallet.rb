class Wallet
  DENOMINATIONS = {
                    :penny   => 1,
                    :nickel  => 5,
                    :dime    => 10,
                    :quarter => 25,
                    :dollar  => 100
                  }

  def initialize
    @wallet = Hash.new(0)
  end

  def <<(coin)
    @wallet[coin] += 1
  end

  def cents
    new_wallet = Hash.new(0)
    @wallet.each do |k, v|
      new_wallet[k] = v * DENOMINATIONS[k] if DENOMINATIONS.has_key?(k)
    end
    total(new_wallet)
  end

  def take(*coins)
    coins.each do |coin|
      @wallet.has_key?(coin) ? @wallet[coin] -= 1 :  nil
    end
  end

  private

  def total(wallet)
    wallet.values.reduce(0, :+)
  end
end
