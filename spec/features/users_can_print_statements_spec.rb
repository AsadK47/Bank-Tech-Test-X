describe 'User print statement' do
  let(:account) { Account.new }

  it 'can print statements' do
    account.deposit(1000)
    account.deposit(500)
    account.withdraw(200)

    expect { account.print_statement }.to output("date || credit || debit || balance\n"\
      "#{Time.now.strftime('%d/%m/%Y')} || || 200.00 || 1300.00\n"\
      "#{Time.now.strftime('%d/%m/%Y')} || 500.00 || || 1500.00\n"\
      "#{Time.now.strftime('%d/%m/%Y')} || 1000.00 || || 1000.00\n").to_stdout
  end
end
