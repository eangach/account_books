require_relative 'account_books/version'
require_relative 'account_books/account'
require_relative 'account_books/db'

module AccountBooks
  Account.create(name: 'Capital')

  accounts = Account.all

  p accounts
end
