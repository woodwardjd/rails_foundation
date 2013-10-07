require 'test_helper'

describe UserDecorator do
  describe '#name_backwards' do
    it 'reverses the name' do
      build(:user, name: 'jared').decorate.name_backwards.must_equal 'deraj'
    end
  end
end
