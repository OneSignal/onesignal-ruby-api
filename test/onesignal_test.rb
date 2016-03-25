require_relative 'test_helper'

class OneSignalTest < Minitest::Test
  def test_device_type_as_integer
    assert_equal 0, OneSignal.device_type_as_integer('ios')
  end
end
