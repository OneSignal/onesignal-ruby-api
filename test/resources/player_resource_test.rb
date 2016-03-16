require_relative '../test_helper'

class PlayerResourceTest < Minitest::Test
  include RequestStubHelpers

  def setup
    client = OneSignal::Client.new(auth_token: 1, app_id: 2)
    @resource = OneSignal::PlayerResource.new(client)
  end

  def test_all
    stub_do_api('/players?app_id=2', :get)
      .to_return(body: api_fixture('players/all'))
    players = @resource.all

    players.each { |player| assert_instance_of OneSignal::Player, player }
    check_player(players.first)
  end

  def test_all_with_params
    stub_do_api('/players?app_id=2&limit=10', :get)
      .to_return(body: api_fixture('players/all'))
    players = @resource.all(limit: 10)

    players.each { |player| assert_instance_of OneSignal::Player, player }
    check_player(players.first)
  end

  def test_find
    stub_do_api('/players/27?app_id=2', :get)
      .to_return(body: api_fixture('players/find'))
    player = @resource.find(27)

    assert_instance_of OneSignal::Player, player
    check_player(player)
  end

  def test_create
    stub_do_api('/players', :post).to_return(body: api_fixture('players/create'))
    params = {
      app_id: 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx',
      identifier: 'ce777617da7f548fe7a9ab6febb56cf39fba6d382000c0395666288d961ee566',
      language: 'en',
      timezone: -28800,
      game_version: '1.0',
      device_os: '7.0.4',
      device_type: 0,
      device_model: 'iPhone',
      tags: { a: 1, foo: 'bar' }
    }

    id = @resource.create(params)

    assert_instance_of String, id
  end

  def test_update
    stub_do_api('/players/27', :put)
      .to_return(body: api_fixture('players/update'))
    params = {
      language: 'en',
      timezone: -28800,
      game_version: '1.0',
      device_os: '7.0.4',
      device_type: 0,
      device_model: 'iPhone',
      tags: { a: '1', foo: '' }
    }

    assert_equal true, @resource.update(27, params)
  end

  def test_on_session
    stub_do_api('/players/27/on_session', :post)
      .to_return(body: api_fixture('players/on_session'))
    params = {
      language: 'es',
      timezone: -28800,
      game_version: '1.0',
      device_os: '7.0.4'
    }

    assert_equal true, @resource.on_session(27, params)
  end

  def test_on_purchase
    stub_do_api('/players/27/on_purchase', :post)
      .to_return(body: api_fixture('players/on_purchase'))
    params = { purchases: [{ sku: "SKU123", iso: "USD", amount: "0.99" }] }

    assert_equal true, @resource.on_purchase(27, params)
  end

  def test_on_focus
    stub_do_api('/players/27/on_focus', :post)
      .to_return(body: api_fixture('players/on_focus'))
    params = { state: 'ping', active_time: 60 }

    assert_equal true, @resource.on_focus(27, params)
  end

  def test_csv_export
    stub_do_api('/players/csv_export', :post)
      .to_return(body: api_fixture('players/csv_export'))

    url = @resource.csv_export(27)

    assert_instance_of String, url
  end

  def check_player(player)
    assert_instance_of String, player.ad_id
    assert_instance_of String, player.amount_spent
    assert_instance_of Fixnum, player.badge_count
    assert_instance_of Time, player.created_at
    assert_instance_of String, player.device_model
    assert_instance_of String, player.device_os
    assert_instance_of String, player.device_type
    assert_instance_of String, player.game_version
    assert_instance_of String, player.identifier
    assert_includes [true, false], player.invalid_identifier
    assert_instance_of String, player.language
    assert_instance_of Time, player.last_active
    assert_instance_of Fixnum, player.session_count
    assert_instance_of Hash, player.tags
    assert_instance_of Fixnum, player.timezone
  end
end
