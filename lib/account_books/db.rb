require 'data_mapper'

module AccountBooks
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, 'sqlite::memory:')

  class Account
    include DataMapper::Resource

    property :id, Serial
    property :name, String
    property :created_at, DateTime
  end

  DataMapper.finalize
  DataMapper.auto_migrate!
  # DataMapper.auto_upgrade!
end
