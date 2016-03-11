$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'onesignal'

require 'minitest/autorun'
require 'minitest/pride'
require 'webmock/minitest'

WebMock.disable_net_connect!

Dir['./test/support/**/*.rb'].each do |file|
  require file
end
