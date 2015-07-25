require_relative 'spec_helper'

describe 'Account' do
  it 'has a version number' do
    ::AccountBooks::VERSION.wont_be_nil
  end

  it 'does something useful' do
    assert false
  end
end
