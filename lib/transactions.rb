class Transactions
  attr_reader :type

  def initialize
    @type
  end

  def credit
    @type = 'credit'
  end
end
