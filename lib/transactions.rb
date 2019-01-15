class Transactions
  attr_reader :type, :balance

  def initialize(balance)
    @type
    @balance = balance
  end

  def credit(money)
    type_is_credit
    add_to_balance(money)
  end

  def debit
    type_is_debit
  end

  private

  def type_is_credit
    @type = 'credit'
  end

  def add_to_balance(money)
    @balance += money
  end

  def type_is_debit
    @type = 'debit'
  end
end
