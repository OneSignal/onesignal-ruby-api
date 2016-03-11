require_relative '../test_helper'

class PlayerTest < Minitest::Test
  def test_created_at_setter_parses_integers
    time = 1415914655
    player = OneSignal::Player.new

    player.created_at = time

    assert_equal Time.at(time), player.created_at
  end

  def test_created_at_setter_leaves_times_alone
    time = Time.now
    player = OneSignal::Player.new

    player.created_at = time

    assert_equal time, player.created_at
  end

  def test_device_type_setter_parses_integers
    player = OneSignal::Player.new

    player.device_type = 0

    assert_equal 'ios', player.device_type
  end

  def test_device_type_setter_leaves_times_alone
    type = 'ios'
    player = OneSignal::Player.new

    player.device_type = type

    assert_equal type, player.device_type
  end

  def test_last_active_setter_parses_integers
    time = 1415914655
    player = OneSignal::Player.new

    player.last_active = time

    assert_equal Time.at(time), player.last_active
  end

  def test_last_active_setter_leaves_times_alone
    time = Time.now
    player = OneSignal::Player.new

    player.last_active = time

    assert_equal time, player.last_active
  end
end
