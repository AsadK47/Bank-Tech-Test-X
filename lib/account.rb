require_relative 'transactions'
require_relative 'statements'

class Account
  attr_reader :balance, :statements
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE, statements = Statements.new)
    @balance = balance
    @statements = statements
  end

  def deposit(money, dep_transaction = Transactions.new(@balance))
    deposit_transaction = dep_transaction
    deposit_transaction.credit(money)
    new_balance(deposit_transaction.balance)
    statements.add(deposit_transaction)
  end

  def withdraw(money, with_transaction = Transactions.new(@balance))
    raise 'Warning: Balance is too low, please deposit first' if money > balance
    withdrawal_transaction = with_transaction
    withdrawal_transaction.debit(money)
    new_balance(withdrawal_transaction.balance)
    statements.add(withdrawal_transaction)
  end

  def print_statement
    @statements.print_out
  end

  private

  def new_balance(money)
    @balance = money
  end
end
