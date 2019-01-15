require_relative 'transactions'

class Account
  attr_reader :balance
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def deposit(money, dep_transaction = Transactions.new(@balance))
    deposit_transaction = dep_transaction
    deposit_transaction.credit(money)
    set_new_balance(deposit_transaction.balance)
  end

  def withdraw(money, with_transaction = Transactions.new(@balance))
    withdrawal_transaction = with_transaction
    withdrawal_transaction.debit(money)
    set_new_balance(withdrawal_transaction.balance)
  end

  private

  def set_new_balance(money)
    @balance = money
  end
end
