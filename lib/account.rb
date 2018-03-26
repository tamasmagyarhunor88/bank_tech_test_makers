class Account
  attr_reader :balance, :logs

  def initialize
    @balance = 0
    @logs = []
  end

  def deposit(amount)
    @balance += amount
    @logs << {:time => Time.now.strftime("%d/%m/%Y"), :type => :deposit, :amount => amount, :actual_balance => @balance}
  end

  def withdraw(amount)
    @balance -= amount
    @logs << {:time => Time.now.strftime("%d/%m/%Y"), :type => :withdraw, :amount => amount, :actual_balance => @balance}
  end

  def print_statement
  end
end
