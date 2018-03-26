require 'account'
describe Account do
  it 'it responds to #balance' do
    my_account = Account.new

    expect(my_account).to respond_to(:balance)
  end
end
