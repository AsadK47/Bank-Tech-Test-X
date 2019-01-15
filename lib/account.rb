class Account
  attr_reader :balance
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def deposit(money)
    add_money_to_balance(money)
  end

  def withdraw(money)
    subtract_money_from_balance(money)
  end

  private

  def add_money_to_balance(money)
    @balance += money
  end

  def subtract_money_from_balance(money)
    @balance -= money
  end
end
