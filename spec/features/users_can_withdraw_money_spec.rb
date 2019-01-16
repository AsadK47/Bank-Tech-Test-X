describe 'Feature - Users can withdraw money' do
  let(:account) { Account.new }

  it 'allows money to be withdrawn' do
    account.deposit(1000)
    account.withdraw(500)
    expect { account.withdraw(200) }.not_to raise_error
  end
end
