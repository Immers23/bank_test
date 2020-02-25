require 'bank_account'

describe 'bank test features for withdrawing, depositing and printing balanace' do
  it 'creating a bank account on initialization will have a balance of 0' do
    bank = Bank.new
    expect(bank.balance).to eq 0
  end

  it 'will increase the balance by the amount deposited' do
    bank = Bank.new
    bank.deposit(1000)
    expect(bank.balance).to eq 1000
  end
end
