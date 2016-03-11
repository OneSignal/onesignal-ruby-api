module OneSignal
  class BaseModel
    def self.to_proc
      method(:new).to_proc
    end

    def initialize(attributes = {})
      attributes.each { |key, value| send("#{key}=", value) }
    end

    def inspect
      values = Hash[
        instance_variables.map { |name| [name, instance_variable_get(name)] }
      ]

      "<#{self.class.name} #{values}>"
    end
  end
end
