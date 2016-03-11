module OneSignal
  class AppIdMissingError < StandardError
    def initialize(message = 'An app ID is needed for this resource')
      super(message)
    end
  end
end
