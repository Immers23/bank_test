# bank_test

To run the application a step by step process from your terminal

Code is structured into 2 classes, the bank_account class and the transaction class that created the transaction objects to be input into the transaction_history array.

1. Clone directory
2. run rspec --init from terminal
3. navigate to irb
4. :001 > require '/Path/to/file_for/bank_account.rb'
5. :002 > bank_account = Bank_account.new
 => #<Bank_account:0x007faa4802fce8 @balance=0, @transaction_history=[]>
6. :003 > to deposit into account 1000 on a specific date, use the following format. bank_account.deposit(1000,'10/01/2012')
 => [#<Transaction:0x007faa488b37e8 @deposit_amount="1000.00", @withdraw_amount=nil, @date="10/01/2012", @balance="1000.00">]
7. :004 > bank_account.deposit(2000,'13/01/2012')
 => [#<Transaction:0x007faa488a0670 @deposit_amount="2000.00", @withdraw_amount=nil, @date="13/01/2012", @balance="3000.00">, #<Transaction:0x007faa488b37e8 @deposit_amount="1000.00", @withdraw_amount=nil, @date="10/01/2012", @balance="1000.00">]
8. :005 > to withdraw into account 500 on a specific date, use the following format.
bank_account.withdraw(500,'14/01/2012')
 => [#<Transaction:0x007faa48889fd8 @deposit_amount=nil, @withdraw_amount="500.00", @date="14/01/2012", @balance="2500.00">, #<Transaction:0x007faa488a0670 @deposit_amount="2000.00", @withdraw_amount=nil, @date="13/01/2012", @balance="3000.00">, #<Transaction:0x007faa488b37e8 @deposit_amount="1000.00", @withdraw_amount=nil, @date="10/01/2012", @balance="1000.00">]
9. :006 > bank_account.print_balance will output the following as expected
date || credit || debit || balance
14/01/2012 ||  || 500.00 || 2500.00
13/01/2012 || 2000.00 ||  || 3000.00
10/01/2012 || 1000.00 ||  || 1000.00
