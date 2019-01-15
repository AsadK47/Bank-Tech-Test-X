class Transactions
  attr_reader :type

  def initialize
    @type
  end

  def credit
    type_is_credit
  end

  def debit
    type_is_debit
  end

  private

  def type_is_credit
    @type = 'credit'
  end

  def type_is_debit
    @type = 'debit'
  end
end
