require 'bank_account'
require 'transaction'

describe 'bank test features for withdrawing, depositing and printing balanace' do
  it 'creating a bank account on initialization will have a balance of 0' do
    bank_account = Bank_account.new
    expect(bank_account.balance).to eq 0
  end

  it 'will increase the balance by the amount deposited' do
    bank_account = Bank_account.new
    bank_account.deposit(1000.00, '14/01/2012')
    expect(bank_account.balance).to eq 1000.00
  end

  it 'will return a statement of transaction history desposit amount and balace' do
    bank_account = Bank_account.new
    bank_account.deposit(1000.00, '14/01/2012')
    expect(bank_account.transaction_history[0].deposit_amount).to eq 1000.00
    expect(bank_account.transaction_history[0].date).to eq '14/01/2012'
    expect(bank_account.transaction_history[0].balance).to eq 1000.00
  end

  it 'will return a statement of transaction history withdraw amount and balace' do
    bank_account = Bank_account.new
    bank_account.deposit(1000.00, '14/01/2012')
    bank_account.withdraw(600.00, '15/01/2012')
    expect(bank_account.transaction_history[0].withdraw_amount).to eq 600.00
    expect(bank_account.transaction_history[0].date).to eq '15/01/2012'
    expect(bank_account.transaction_history[0].balance).to eq 400.00
  end

  it 'will return a statement of transaction history withdraw amount and balace' do
    bank_account = Bank_account.new
    bank_account.deposit(1000.00, '10/01/2012')
    bank_account.deposit(2000.00, '13/01/2012')
    bank_account.withdraw(500.00, '14/01/2012')
    expect(bank_account.print_balance).to eq 1
  end


end
