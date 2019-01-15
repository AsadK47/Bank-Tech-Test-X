require 'transactions'

describe Transactions do
  let(:transactions) { described_class.new }

  describe '#credit' do
    it 'stores transactions as credits' do
      transactions.credit
      expect(transactions.type).to eq('credit')
    end
  end

  describe '#debit' do
    it 'stores transactions as debits' do
      transactions.debit
      expect(transactions.type).to eq('debit')
    end
  end
end
