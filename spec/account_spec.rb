require 'account'
describe Account do
  my_account = Account.new

  it 'responds to #balance' do
    expect(my_account).to respond_to(:balance)
  end

  it 'responds to #deposit' do
    expect(my_account).to respond_to(:deposit)
  end
end
