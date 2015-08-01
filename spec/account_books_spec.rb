require_relative 'spec_helper'

describe AccountBooks do
  it 'has a version number' do
    ::AccountBooks::VERSION.wont_be_nil
  end
end
