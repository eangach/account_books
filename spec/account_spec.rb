require_relative 'spec_helper'

module AccountBooks
  describe Account do
    it 'has two accounts' do
      Account.create(name: 'Test Account One')
      Account.create(name: 'Test Account Two')
      Account.count.must_equal 2
    end

    it 'has one account' do
      Account.create(name: 'Test Account Three')
      Account.count.must_equal 1
    end

    it 'cannot have duplicate account names' do
      Account.create(name: 'Test Account One')
      Account.count.must_equal 1
      Account.create(name: 'Test Account One')
      Account.count.must_equal 1
    end
  end
end
