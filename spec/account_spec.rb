require 'account'

describe Account do
  let(:account) { described_class.new }

  describe '#deposit' do
    it 'allows users to deposit money' do
      account.deposit(1000)
      expect(account.balance).to eq(1000)
    end
  end
end
