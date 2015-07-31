require_relative 'spec_helper'

describe AccountBooks do
  it 'has a version number' do
    ::AccountBooks::VERSION.wont_be_nil
  end

  it 'has two accounts' do
    ::AccountBooks::Account.create(name: 'Cash')
    ::AccountBooks::Account.count.must_equal 2
  end

  it 'has one account' do
    ::AccountBooks::Account.count.must_equal 1
  end
end
