class Transactions
  attr_reader :type, :balance

  def initialize(balance)
    @type
    @balance = balance
  end

  def credit(money)
    type_is_credit
    increase_balance(money)
  end

  def debit(money)
    type_is_debit
    reduce_balance(money)
  end

  private

  def type_is_credit
    @type = 'credit'
  end

  def increase_balance(money)
    @balance += money
  end

  def type_is_debit
    @type = 'debit'
  end

  def reduce_balance(money)
    @balance -= money
  end
end
