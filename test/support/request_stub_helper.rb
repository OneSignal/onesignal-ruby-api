require_relative '../../lib/onesignal/client'

module RequestStubHelpers
  def stub_do_api(path, verb = :any)
    stub_request(verb, "#{OneSignal::Client::BASE_URL}#{path}")
  end

  def api_fixture(fixture_name)
    Pathname.new('./test/fixtures/').join("#{fixture_name}.json").read
  end
end
