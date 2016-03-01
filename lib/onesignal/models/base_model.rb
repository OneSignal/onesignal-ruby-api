require 'date'

module OneSignal
  class BaseModel
    DATE_REGEX = /\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}.\d{3}Z/

    def self.to_proc
      method(:new).to_proc
    end

    def initialize(attributes = {})
      attributes.each do |key, value|
        if string_date?(value)
          value = DateTime.parse(value)
        end

        instance_variable_set("@#{key}", value)
      end
    end

    def inspect
      values = Hash[
        instance_variables.map { |name| [name, instance_variable_get(name)] }
      ]

      "<#{self.class.name} #{values}>"
    end

    private

    def string_date?(date)
      date.is_a?(String) && date.match(DATE_REGEX)
    end
  end
end
