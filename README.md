# OneSignal

[![Gem Version][rgb]][rgl] [![Build Status][trb]][trl] [![Code Climate][ccb]][ccl]

OneSignal is a simple ruby wrapper for the [OneSignal API][osa].

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'onesignal'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install onesignal

## Usage

You can find your auth keys and app IDs on the Account Management page when
you're logged into OneSignal. With those at hand, you can create a client.

```ruby
client = OneSignal::Client.new(auth_token: 'AUTH_TOKEN', app_id: 'APP_ID')
```

### Design

This gem follows a strict design of resources as methods on your client. For
examples, for apps, you will call your client like this:

```ruby
client = OneSignal::Client.new(auth_token: 'AUTH_TOKEN')
client.apps #=> AppResource
```

It will return objects that contain the information provided by the API. For
example:

```ruby
client = OneSignal::Client.new(auth_token: 'AUTH_TOKEN')
client.apps.all
# => [ OneSignal::App(id: '92911750-242d-4260-9e00-9d9034f139ce', name: 'Your App 1', ...), OneSignal::App(id: 'e4e87830-b954-11e3-811d-f3b376925f15', name: Your app 2', ...) ]
```

To retrieve objects, you can perform this type of action on the resource (if
the API supports it):

```ruby
client = OneSignal::Client.new(auth_token: 'AUTH_TOKEN')
app = client.apps.find(id: 'e4e87830-b954-11e3-811d-f3b376925f15')
# => OneSignal::App(id: 'e4e87830-b954-11e3-811d-f3b376925f15', name: 'Your app', ...)
```

To create objects, you just have to build a params hash and pass it to the
action on the resource:

```ruby
client = OneSignal::Client.new(auth_token: 'AUTH_TOKEN')
params = { name: 'Your app', apns_env: 'sandbox', ... }
app = client.apps.create(params)
# => OneSignal::App(id: 'e4e87830-b954-11e3-811d-f3b376925f15', name: 'Your app', ...)
```

### All Resources and actions

#### App resource

```ruby
client = OneSignal::Client.new(auth_token: 'AUTH_TOKEN')
client.apps #=> OneSignal::AppResource
```

Actions supported:

* `client.apps.all`
* `client.apps.find(id)`
* `client.apps.create(params)`
* `client.apps.update(id, params)`

#### Player resource

```ruby
client = OneSignal::Client.new(auth_token: 'AUTH_TOKEN', app_id: 'APP_ID')
client.players #=> OneSignal::PlayerResource
```

Actions supported:

* `client.players.all`
* `client.players.all(params)`
* `client.players.find(id)`
* `client.players.create(params)`
* `client.players.update(id, params)`
* `client.players.on_session(id, params)`
* `client.players.on_purchase(id, params)`
* `client.players.on_focus(id, params)`
* `client.players.csv_export(id)`

#### Notification resource

```ruby
client = OneSignal::Client.new(auth_token: 'AUTH_TOKEN', app_id: 'APP_ID')
client.notifications #=> OneSignal::NotificationResource
```

Actions supported:

* `client.notifications.all`
* `client.notifications.all(params)`
* `client.notifications.find(id)`
* `client.notifications.track_open(id, params)`
* `client.notifications.create(params)`
* `client.notifications.cancel(id)`

## Contributing

Bug reports and pull requests are welcome on [GitHub][gh].

This project is intended to be a safe, welcoming space for collaboration, and
contributors are expected to adhere to the [Contributor Covenant][cc] code of conduct.

## License

The gem is available as open source under the terms of the [MIT License][mit].

[rgb]: https://img.shields.io/gem/v/onesignal.svg
[rgl]: https://rubygems.org/gems/onesignal
[trb]: https://travis-ci.org/coding-chimp/onesignal.svg?branch=master
[trl]: https://travis-ci.org/coding-chimp/onesignal
[ccb]: https://codeclimate.com/github/coding-chimp/onesignal/badges/gpa.svg
[ccl]: https://codeclimate.com/github/coding-chimp/onesignal
[osa]: https://documentation.onesignal.com/docs/server-api-overview
[cc]: http://contributor-covenant.org
[gh]: https://github.com/coding-chimp/onesignal
[mit]: http://opensource.org/licenses/MIT
