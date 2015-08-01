require 'data_mapper'

module AccountBooks
  class Account
    include DataMapper::Resource

    property :id, Serial
    property :name, String
    property :created_at, DateTime
  end
end
