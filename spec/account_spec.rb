require 'account'

describe Account do
  let(:account) { described_class.new }

  describe '#deposit' do
    it 'allows users to deposit money' do
      account.deposit(1000)
      expect(account.balance).to eq(1000)
    end
  end

  describe '#withdraw' do
    it 'allows users to withdraw money' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq(500)
    end
  end
end
