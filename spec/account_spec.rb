require 'account'

describe Account do
  my_account = Account.new

  context 'initialize' do
    it 'responds to #balance' do
      expect(my_account).to respond_to(:balance)
    end
  end

  context 'deposit' do
    it 'responds to #deposit' do
      expect(my_account).to respond_to(:deposit)
    end

    it 'can deposit amount to account' do
      my_account.deposit(100)
      expect(my_account.balance).to eq(100)
    end
  end

  context 'withdraw' do
    it 'responds to #withdraw' do
      expect(my_account).to respond_to(:withdraw)
    end

    it 'can #withdraw amount from account' do
      my_account.withdraw(50)
      expect(my_account.balance).to eq(50)
    end
  end

end
