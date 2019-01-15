class Transactions
  attr_reader :type, :balance, :amount, :date

  def initialize(balance, date = formatted_date)
    @balance = balance
    @date = date
  end

  def credit(money)
    type_is_credit
    increase_balance(money)
    store_amount(money)
  end

  def debit(money)
    type_is_debit
    reduce_balance(money)
    store_amount(money)
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

  def store_amount(money)
    @amount = money
  end

  def formatted_date
    Time.now.strftime('%d/%m/%Y')
  end
end
