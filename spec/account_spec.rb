require 'account'
describe Account do
  my_account = Account.new

  it 'responds to #balance' do
    expect(my_account).to respond_to(:balance)
  end

  it 'responds to #deposit' do
    expect(my_account).to respond_to(:deposit)
  end

  it 'can deposit amount to account' do
    my_account.deposit(100)
    expect(my_account.balance).to eq(100)
  end
end
