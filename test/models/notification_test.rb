require_relative '../test_helper'

class NotificationTest < Minitest::Test
  def test_queued_at_setter_parses_integers
    time = 1415914655

    notification = OneSignal::Notification.new(queued_at: time)

    assert_equal Time.at(time), notification.queued_at
  end

  def test_queued_at_setter_leaves_times_alone
    time = Time.now

    notification = OneSignal::Notification.new(queued_at: time)

    assert_equal time, notification.queued_at
  end

  def test_send_after_setter_parses_integers
    time = 1415914655

    notification = OneSignal::Notification.new(send_after: time)

    assert_equal Time.at(time), notification.send_after
  end

  def test_send_after_setter_leaves_times_alone
    time = Time.now

    notification = OneSignal::Notification.new(send_after: time)

    assert_equal time, notification.send_after
  end
end
