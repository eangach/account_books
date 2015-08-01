require_relative 'spec_helper'

module AccountBooks
  describe Account do
    it 'has two accounts' do
      Account.create(name: 'Cash')
      Account.count.must_equal 2
    end

    it 'has one account' do
      Account.count.must_equal 1
    end
  end
end
