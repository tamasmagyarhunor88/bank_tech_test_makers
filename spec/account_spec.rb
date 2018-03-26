require 'account'

describe Account do
  before(:all) do
    @my_account = Account.new
    @balance = @my_account.balance
  end

  context 'initialize' do
    it 'responds to #balance' do
      expect(@my_account).to respond_to(:balance)
    end

    it 'responds to #logs' do
      expect(@my_account).to respond_to(:logs)
    end
  end

  context 'deposit' do
    it 'responds to #deposit' do
      expect(@my_account).to respond_to(:deposit)
    end

    it 'can #deposit amount to account' do
      expect { @my_account.deposit(100) }.to change { @my_account.balance }.by(100)
    end

    it 'stores #deposit transaction log to #logs instance variable' do
      @my_account.deposit(100)
      expect(@my_account.logs).to include({:time=>"#{Time.now.strftime("%d/%m/%Y")}", :type=>:deposit, :amount=>100, :actual_balance=>200})
    end
  end

  context '#withdraw' do
    it 'responds to #withdraw' do
      expect(@my_account).to respond_to(:withdraw)
    end

    it 'can #withdraw amount from account' do
      expect { @my_account.withdraw(50) }.to change { @my_account.balance }.by(-50)
    end

    it 'stores #withdraw transaction log to #logs instance variable' do
      @my_account.withdraw(30)
      expect(@my_account.logs).to include({:time=>"#{Time.now.strftime("%d/%m/%Y")}", :type=>:withdraw, :amount=>30, :actual_balance=>120})
    end
  end

end
