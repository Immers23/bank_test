require 'bank_account'
require 'transaction'

describe 'bank test features for withdrawing, depositing and printing balanace' do
  it 'creating a bank account on initialization will have a balance of 0' do
    bank_account = Bank_account.new
    expect(bank_account.balance).to eq 0
  end

  it 'will increase the balance by the amount deposited' do
    bank_account = Bank_account.new
    bank_account.deposit(1000, '14/01/2012')
    expect(bank_account.balance).to eq 1000
  end

  it 'will return a statement of transaction history desposit amount and balace' do
    bank_account = Bank_account.new
    bank_account.deposit(1000, '14/01/2012')
    expect(bank_account.transaction_history[0].deposit_amount).to eq 1000
    expect(bank_account.transaction_history[0].date).to eq '14/01/2012'
    expect(bank_account.transaction_history[0].balance).to eq 1000
  end

  it 'will return a statement of transaction history withdraw amount and balace' do
    bank_account = Bank_account.new
    bank_account.deposit(1000, '14/01/2012')
    bank_account.withdraw(600, '15/01/2012')
    expect(bank_account.transaction_history[0].withdraw_amount).to eq 600
    expect(bank_account.transaction_history[0].date).to eq '15/01/2012'
    expect(bank_account.transaction_history[0].balance).to eq 400
  end
end
