require 'account'

describe Account do
  before(:all) do
    @my_account = Account.new
    @minimum_balance = Account::MINIMUM_BALANCE
  end

  it "responds to #balance" do
    expect(@my_account).to respond_to(:balance)
  end

  it "initializes with minimum balance" do
    expect(@my_account.balance).to eq(@minimum_balance)
  end
end
