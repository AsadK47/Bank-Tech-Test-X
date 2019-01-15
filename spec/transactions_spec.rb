require 'transactions'

describe Transactions do
  let(:transactions) { described_class.new(200) }

  describe '#credit' do
    it 'stores transactions as credits' do
      transactions.credit(300)
      expect(transactions.type).to eq('credit')
    end

    it 'stores the transactions value in a balance' do
      transactions.credit(300)
      expect(transactions.balance).to eq(500)
    end
  end

  describe '#debit' do
    it 'stores transactions as debits' do
      transactions.debit
      expect(transactions.type).to eq('debit')
    end
  end
end
