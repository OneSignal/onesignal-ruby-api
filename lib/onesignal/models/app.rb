require 'time'

module OneSignal
  class App < BaseModel
    DATE_REGEX = /\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{3}Z/

    def created_at=(time)
      parse_time('created_at', time)
    end

    def updated_at=(time)
      parse_time('updated_at', time)
    end

    private

    def parse_time(attribute, value)
      if string_date?(value)
        value = Time.parse(value)
      end

      instance_variable_set("@#{attribute}", value)
    end

    def string_date?(date)
      date.is_a?(String) && date.match(DATE_REGEX)
    end
  end
end
