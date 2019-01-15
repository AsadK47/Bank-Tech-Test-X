require 'transactions'

describe Transactions do
  let(:transactions) { described_class.new }

  describe '#credit' do
    it 'stores transactions as credits' do
      transactions.credit
      expect(transactions.type).to eq('credit')
    end
  end
end
