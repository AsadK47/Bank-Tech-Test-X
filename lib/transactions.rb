class Transactions
  attr_reader :type

  def initialize
    @type
  end

  def credit
    type_is_credit
  end

  private

  def type_is_credit
    @type = 'credit'
  end
end
