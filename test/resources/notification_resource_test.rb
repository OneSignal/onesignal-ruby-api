require_relative '../test_helper'

class NotificationResourceTest < Minitest::Test
  include RequestStubHelpers

  def setup
    client = OneSignal::Client.new(auth_token: 1, app_id: 2)
    @resource = OneSignal::NotificationResource.new(client)
  end

  def test_all
    stub_do_api('/notifications?app_id=2', :get)
      .to_return(body: api_fixture('notifications/all'))
    notifications = @resource.all

    notifications.each do |notification|
      assert_instance_of OneSignal::Notification, notification
    end
    check_notification(notifications.first)
  end

  def test_all_with_params
    stub_do_api('/notifications?app_id=2&limit=10', :get)
      .to_return(body: api_fixture('notifications/all'))
    notifications = @resource.all(limit: 10)

    notifications.each do |notification|
      assert_instance_of OneSignal::Notification, notification
    end
    check_notification(notifications.first)
  end

  def test_find
    stub_do_api('/notifications/27?app_id=2', :get)
      .to_return(body: api_fixture('notifications/find'))
    notification = @resource.find(27)

    assert_instance_of OneSignal::Notification, notification
    check_notification(notification)
  end

  def test_track_open
    stub_do_api('/notifications/27', :put)
      .to_return(body: api_fixture('notifications/track_open'))

    assert_equal true, @resource.track_open(27, opened: true)
  end

  def test_create
    stub_do_api('/notifications', :post)
      .to_return(body: api_fixture('notifications/create'))
    params = {
      app_id: '5eb5a37e-b458-11e3-ac11-000c2940e62c',
      included_segments: ['All'],
      data: {foo: 'bar'},
      contents: {en: 'English Message'}
    }

    assert_instance_of Hash, @resource.create(params)
  end

  def test_cancel
    stub_do_api('/notifications/27?app_id=2', :delete)
      .to_return(body: api_fixture('notifications/cancel'))

    assert_equal true, @resource.cancel(27)
  end

  def check_notification(notification)
    assert_includes [true, false], notification.canceled
    assert_instance_of Hash, notification.contents
    assert_instance_of Fixnum, notification.converted
    assert_instance_of Hash, notification.data
    assert_instance_of Fixnum, notification.failed
    assert_instance_of Hash, notification.headings
    assert_instance_of String, notification.id
    assert_instance_of Time, notification.queued_at
    assert_instance_of Fixnum, notification.remaining
    assert_instance_of Time, notification.send_after
    assert_instance_of Fixnum, notification.successful
    assert_instance_of String, notification.url
  end
end
