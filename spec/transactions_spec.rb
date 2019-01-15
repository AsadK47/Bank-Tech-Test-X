require 'transactions'

describe Transactions do
  let(:transactions) { described_class.new(0) }

  describe '#credit' do
    before(:each) do
      transactions.credit(300)
    end

    it 'stores transactions as credits' do
      expect(transactions.type).to eq('credit')
    end

    it 'stores the credit as a plus value in a balance' do
      expect(transactions.balance).to eq(300)
    end

    it 'stores the transaction amount for a credit' do
      expect(transactions.amount).to eq(300)
    end
  end

  describe '#debit' do
    before(:each) do
      transactions.credit(200)
      transactions.debit(100)
    end

    it 'stores transactions as debits' do
      expect(transactions.type).to eq('debit')
    end

    it 'stores the debit as a minus value in a balance' do
      expect(transactions.balance).to eq(100)
    end

    it 'stores the transction amount for a debit' do
      expect(transactions.amount).to eq(100)
    end
  end
end
