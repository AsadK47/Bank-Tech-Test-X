class Account
  attr_reader :balance
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def deposit(money)
    add_money_to_balance(money)
  end

  private

  def add_money_to_balance(money)
    @balance += money
  end
end
