class Account
  attr_reader :balance
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def deposit(money)
    @balance += money
  end
end
