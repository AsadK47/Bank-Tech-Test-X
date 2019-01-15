class Statements
  attr_reader :list

  def initialize
    @list = []
  end

  def add(transactions)
    @list << transactions
  end
end
