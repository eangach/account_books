require 'data_mapper'

module AccountBooks
  class Account
    include DataMapper::Resource

    property :id, Serial
    property :name, String, required: true, unique: true
    property :created_at, DateTime
    property :updated_at, DateTime
  end
end
