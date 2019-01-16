describe 'Feature - User can deposit money' do
  let(:account) { Account.new }

  it 'lets users deposit money' do
    expect { account.deposit(1000) }.not_to raise_error
  end
end
