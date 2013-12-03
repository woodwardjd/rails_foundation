require 'test_helper'

class HomeDecoratorTest < ActiveSupport::TestCase
  describe '#name_backwards' do
    it 'reverses the name' do
      build(:user, name: 'jared').decorate.name_backwards.must_equal 'deraj'
    end
  end
end
