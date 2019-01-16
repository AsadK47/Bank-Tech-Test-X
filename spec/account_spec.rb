require 'account'

describe Account do
  let(:transactions) { double :transactions }
  let(:statements) { double :statements }
  subject(:account) { described_class.new(transactions, statements) }

  before(:each) do
    allow(statements).to receive(:add)
    allow(transactions).to receive(:credit).with(1000)
    allow(transactions).to receive(:balance).and_return(1000)
    allow(transactions).to receive(:store_amount).and_return(1000)
  end

  describe '#deposit' do
    before(:each) do
      account.deposit(1000, transactions)
    end

    it 'stores the transaction' do
      expect(transactions.store_amount).to eq(1000)
    end
  end

  describe '#withdraw' do
    before(:each) do
      allow(transactions).to receive(:debit).with(500)
      allow(transactions).to receive(:balance).and_return(500)
      allow(transactions).to receive(:store_amount).and_return(500)
      account.deposit(1000, transactions)
      account.withdraw(500, transactions)
    end

    it 'stores the transaction' do
      expect(transactions.store_amount).to eq(500)
    end

    it 'raises error if withdraw amount is greater than balance' do
      expect { account.withdraw(600, transactions) }.to raise_error 'Warning: Balance is too low, please deposit first'
    end
  end

  describe '#print_statement' do
    it 'can print a statement' do
      expect(statements).to receive(:print_out)
      account.print_statement
    end
  end
end
