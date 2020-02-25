require_relative 'transaction'

class Bank_account

  attr_accessor :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(deposit_amount, date)
    @balance += deposit_amount
    transaction = Transaction.new(date, deposit_amount, nil, @balance)
    @transaction_history.unshift(transaction)
  end

  def withdraw(withdraw_amount, date)
    @balance -= withdraw_amount
    transaction = Transaction.new(date, nil, withdraw_amount, @balance)
    @transaction_history.unshift(transaction)
  end

end
