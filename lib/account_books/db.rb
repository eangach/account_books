require 'data_mapper'

module AccountBooks
  DataMapper::Logger.new($stdout, :info)
  database = ENV['DB'] || "sqlite3://#{Dir.pwd}/account_books.db"
  DataMapper.setup(:default, database)

  class Account
    include DataMapper::Resource

    property :id, Serial
    property :name, String
    property :created_at, DateTime
  end

  DataMapper.finalize
  DataMapper.auto_upgrade!
end
