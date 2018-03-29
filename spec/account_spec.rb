require 'account'

describe Account do

  before(:all) do
    @my_account = Account.new
  end

  it 'responds to #balance' do
    expect(@my_account).to respond_to(:balance)
  end

  it 'initializes with 0 balance' do
    expect(@my_account.balance).to eq(0)
  end
end
