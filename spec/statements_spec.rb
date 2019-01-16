require 'statements'

describe Statements do
  let(:statements) { described_class.new }
  let(:transactions_1) { double :transactions_1 }
  let(:transactions_2) { double :transactions_2 }

  it 'initializes with an empty list of transactions' do
    expect(statements.list).to eq([])
  end

  describe '#add' do
    it 'adds transactions to the array' do
      statements.add(transactions_1)
      expect(statements.list).to include(transactions_1)
    end
  end

  describe '#print' do
    it 'prints out the transactions' do
      allow(transactions_1).to receive(:type).and_return('credit')
      allow(transactions_1).to receive(:date).and_return('15/01/2019')
      allow(transactions_1).to receive(:amount).and_return('1000.00')
      allow(transactions_1).to receive(:balance).and_return('1000.00')
      statements.add(transactions_1)

      allow(transactions_2).to receive(:type).and_return('debit')
      allow(transactions_2).to receive(:date).and_return('15/01/2019')
      allow(transactions_2).to receive(:amount).and_return('500.00')
      allow(transactions_2).to receive(:balance).and_return('500.00')
      statements.add(transactions_2)

      expect { statements.print_out }.to output("date || credit || debit || balance\n"\
        "15/01/2019 || || 500.00 || 500.00\n"\
        "15/01/2019 || 1000.00 || || 1000.00\n").to_stdout 
    end
  end
end
