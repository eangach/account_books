require 'data_mapper'

module AccountBooks
  DataMapper::Logger.new($stdout, :info)
  database = ENV['DB'] || "sqlite3://#{Dir.pwd}/account_books.db"
  DataMapper.setup(:default, database)

  DataMapper.finalize
  DataMapper.auto_upgrade!
end
