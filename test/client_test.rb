require_relative 'test_helper'

class ClientTest < Minitest::Test
  def test_apps_returns_an_app_resource
    client = OneSignal::Client.new(auth_token: 'test')

    assert_instance_of OneSignal::AppResource, client.apps
  end

  def test_players_returns_a_player_resource
    client = OneSignal::Client.new(auth_token: 'test', app_id: '1')

    assert_instance_of OneSignal::PlayerResource, client.players
  end

  def test_players_throws_error_when_app_id_missing
    client = OneSignal::Client.new(auth_token: 'test')

    assert_raises(OneSignal::AppIdMissingError) { client.players }
  end

  def test_notifications_returns_a_notification_resource
    client = OneSignal::Client.new(auth_token: 'test', app_id: '1')

    assert_instance_of OneSignal::NotificationResource, client.notifications
  end

  def test_notifications_throws_error_when_app_id_missing
    client = OneSignal::Client.new(auth_token: 'test')

    assert_raises(OneSignal::AppIdMissingError) { client.notifications }
  end
end
