require 'account'

describe Account do
  let(:account) { described_class.new }
  let(:transactions) { double :transactions }

  before(:each) do
    allow(transactions).to receive(:credit).with(1000)
    allow(transactions).to receive(:balance).and_return(1000)
  end

  describe '#deposit' do
    before(:each) do
      account.deposit(1000, transactions)
    end

    it 'allows users to deposit money' do
      expect(account.balance).to eq(1000)
    end

    it 'stores the transaction' do
      expect(account.statements.list).to include transactions
    end
  end

  describe '#withdraw' do
    before(:each) do
      allow(transactions).to receive(:debit).with(500)
      allow(transactions).to receive(:balance).and_return(500)
      account.deposit(1000, transactions)
      account.withdraw(500, transactions)
    end
    
    it 'allows users to withdraw money' do
      expect(account.balance).to eq(500)
    end

    it 'stores the transaction' do
      expect(account.statements.list).to include transactions
    end
  end
end
