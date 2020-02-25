class Transaction

  attr_accessor :date, :deposit_amount, :withdraw_amount, :balance

  def initialize(date, deposit_amount, withdraw_amount, balance)
    @deposit_amount = deposit_amount
    @withdraw_amount = withdraw_amount
    @date = date
    @balance = balance
  end



end
