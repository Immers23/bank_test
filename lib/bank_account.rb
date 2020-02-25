require_relative 'transaction'

class Bank_account

  attr_accessor :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []
  end

  def deposit(deposit_amount, date)
    @balance += deposit_amount
    transaction = Transaction.new(date, ('%.2f' % deposit_amount).to_i, nil, '%.2f' % @balance)
    @transaction_history.unshift(transaction)
  end

  def withdraw(withdraw_amount, date)
    @balance -= withdraw_amount
    transaction = Transaction.new(date, nil, ('%.2f' % withdraw_amount).to_i, '%.2f' % @balance)
    @transaction_history.unshift(transaction)
  end

  def print_balance
    puts "date || credit || debit || balance"
      @transaction_history.each do |transaction| puts "#{transaction.date} || #{transaction.deposit_amount} || #{transaction.withdraw_amount} || #{transaction.balance}"
    end
  end
end
