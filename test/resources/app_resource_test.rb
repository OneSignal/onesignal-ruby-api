require_relative '../test_helper'

class AppResourceTest < Minitest::Test
  include RequestStubHelpers

  def setup
    client = OneSignal::Client.new(auth_token: 1)
    @resource = OneSignal::AppResource.new(client)
  end

  def test_all
    stub_do_api('/apps', :get).to_return(body: api_fixture('apps/all'))
    apps = @resource.all

    apps.each do |app|
      assert_instance_of OneSignal::App, app
    end
    check_app(apps.first)
  end

  def test_find
    stub_do_api('/apps/20', :get).to_return(body: api_fixture('apps/find'))
    app = @resource.find(20)

    assert_instance_of OneSignal::App, app
    check_app(app)
  end

  def test_create
    stub_do_api('/apps', :post).to_return(body: api_fixture('apps/create'))
    params = {
      name: 'Your app 1',
      apns_env: 'sandbox',
      apns_p12: 'asdsadcvawe223cwef...',
      apns_p12_password: 'FooBar',
      gcm_key: 'a gcm push key'
    }

    app = @resource.create(params)

    assert_instance_of OneSignal::App, app
    check_app(app)
  end

  def test_update
    stub_do_api('/apps/20', :put).to_return(body: api_fixture('apps/update'))
    params = { name: 'Your app 2' }

    app = @resource.update(20, params)

    assert_instance_of OneSignal::App, app
    check_app(app)
  end

  def check_app(app)
    assert_instance_of String, app.id
    assert_instance_of String, app.name
    assert_instance_of Fixnum, app.players
    assert_instance_of Fixnum, app.messagable_players
    assert_instance_of DateTime, app.updated_at
    assert_instance_of DateTime, app.created_at
    assert_instance_of String, app.gcm_key
    assert_instance_of String, app.chrome_key
    assert_instance_of String, app.chrome_web_origin
    assert_instance_of String, app.chrome_web_gcm_sender_id
    assert_instance_of String, app.chrome_web_default_notification_icon
    assert_instance_of String, app.chrome_web_sub_domain
    assert_instance_of String, app.apns_env
    assert_instance_of String, app.apns_certificates
    assert_instance_of String, app.safari_apns_cetificate
    assert_instance_of String, app.safari_site_origin
    assert_instance_of String, app.safari_push_id
    assert_instance_of String, app.safari_icon_16_16
    assert_instance_of String, app.safari_icon_32_32
    assert_instance_of String, app.safari_icon_64_64
    assert_instance_of String, app.safari_icon_128_128
    assert_instance_of String, app.safari_icon_256_256
    assert_instance_of String, app.site_name
    assert_instance_of String, app.basic_auth_key
  end
end
