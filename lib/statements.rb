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
      header += add_transaction_date(transaction)
      header += add_credit_transaction(transaction)
      header += add_debit_transaction(transaction)
      header += " #{format('%.2f', transaction.balance)}"
    end

    puts header
  end

  private

  def add_transaction_date(transaction)
    "#{transaction.date} || "
  end

  def add_credit_transaction(transaction)
    if "#{transaction.type}" == 'credit'
      "#{format('%.2f', transaction.amount)} || "
    else
      "|| "
    end
  end

  def add_debit_transaction(transaction)
    if "#{transaction.type}" == 'debit'
      "#{format('%.2f', transaction.amount)} ||"
    else
      "||"
    end
  end

end
