require 'transactions'

describe Transactions do
  let(:transactions) { described_class.new(200) }

  describe '#credit' do
    before(:each) do
      transactions.credit(300)
    end

    it 'stores transactions as credits' do
      expect(transactions.type).to eq('credit')
    end

    it 'stores the transactions value in a balance' do
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
