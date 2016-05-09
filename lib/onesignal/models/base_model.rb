module OneSignal
  class BaseModel
    def self.to_proc
      method(:new).to_proc
    end

    def initialize(attributes = {})
      attributes.each do |key, value|
        if responds_to?("#{key}=")
          send("#{key}=", value)
          next
        end

        puts "Extra key: #{key} given"
      end
    end

    def inspect
      values = Hash[
        instance_variables.map { |name| [name, instance_variable_get(name)] }
      ]

      "<#{self.class.name} #{values}>"
    end
  end
end
