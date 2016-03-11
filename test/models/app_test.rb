require_relative '../test_helper'

class AppTest < Minitest::Test
  def test_created_at_setter_parses_string_dates
    time = '2014-04-01T04:20:02.003Z'
    app = OneSignal::App.new

    app.created_at = time

    assert_equal Time.parse(time), app.created_at
  end

  def test_created_at_setter_leaves_times_alone
    time = Time.now
    app = OneSignal::App.new

    app.created_at = time

    assert_equal time, app.created_at
  end

  def test_updated_at_setter_parses_string_dates
    time = '2014-04-01T04:20:02.003Z'
    app = OneSignal::App.new

    app.updated_at = time

    assert_equal Time.parse(time), app.updated_at
  end

  def test_updated_at_setter_leaves_times_alone
    time = Time.now
    app = OneSignal::App.new

    app.updated_at = time

    assert_equal time, app.updated_at
  end
end
