require 'bank_account'

describe 'bank test features for withdrawing, depositing and printing balanace' do
  it 'creating a bank account on initialization will have a balance of 0' do
    bank = Bank.new
    expect(bank.balance).to eq 0
  end
end
