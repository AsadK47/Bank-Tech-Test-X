describe 'User can deposit money' do
  let(:account) { Account.new }

  it 'lets users deposit money' do
    account.deposit(1000)
    expect(account.balance).to eq(1000)
  end
end
