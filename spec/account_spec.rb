require_relative 'spec_helper'

module AccountBooks
  describe Account do
    it 'has two accounts' do
      Account.create(name: 'Test Account One', type: :asset)
      Account.create(name: 'Test Account Two', type: :asset)
      Account.count.must_equal 2
    end

    it 'has one account' do
      Account.create(name: 'Test Account Three', type: :asset)
      Account.count.must_equal 1
    end

    it 'cannot have duplicate account names' do
      Account.create(name: 'Test Account One', type: :asset)
      Account.count.must_equal 1
      Account.create(name: 'Test Account One', type: :asset)
      Account.count.must_equal 1
    end

    it 'can have account type asset, liability, equity, revenue or expense' do
      Account.count.must_equal 0

      %w{asset liability revenue expense equity}.each do |type|
        Account.create(name: "Test #{type} Account", type: type)
      end
      Account.count.must_equal 5
    end

    it 'cannot have account type other' do
      Account.count.must_equal 0

      Account.create(name: 'Test other Account', type: :other)
      Account.count.must_equal 0
    end
  end
end
