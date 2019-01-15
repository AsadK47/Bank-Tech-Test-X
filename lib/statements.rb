class Statements
  attr_reader :list

  def initialize
    @list = []
  end

  def add(transactions)
    @list << transactions
  end

  def print_out
    @list.reverse!

    header = 'date || credit || debit || balance'

    @list.each do |transaction|
      header += "\n"
      header += "#{transaction.date} || "
      if "#{transaction.type}" == 'credit'
        header += "#{transaction.amount} || ||"
      elsif "#{transaction.type}" == 'debit'
        header += "|| #{transaction.amount} ||"
      else
        "|| "
      end
      header += " #{transaction.balance}"
    end
    return header
  end

end
