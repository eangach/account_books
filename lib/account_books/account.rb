require 'data_mapper'

module AccountBooks
  class Account
    include DataMapper::Resource

    property :id, Serial
    property :name, String, required: true, unique: true, index: true
    property :type, Enum[ :asset, :liability, :equity, :revenue, :expense], required: true
    property :created_at, DateTime
    property :updated_at, DateTime

    def self.find_by_name(name)
      first(name: name)
    end

    def self.find_by_type(type)
      all(type: type)
    end
  end
end
