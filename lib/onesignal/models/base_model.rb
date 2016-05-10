module OneSignal
  class BaseModel
    def self.to_proc
      method(:new).to_proc
    end

    def initialize(attributes = {})
      attributes.each do |key, value|
        create_attr(key)
        send("#{key}=", value)
      end
    end

    def inspect
      values = Hash[
        instance_variables.map { |name| [name, instance_variable_get(name)] }
      ]

      "<#{self.class.name} #{values}>"
    end

    private

    def create_attr(name)
      create_method("#{name}=".to_sym) do |value|
        instance_variable_set("@#{name}", value)
      end

      create_method(name.to_sym) do
        instance_variable_get("@#{name}")
      end
    end

    def create_method(name, &block)
      unless respond_to?(name)
        self.class.send(:define_method, name, &block)
      end
    end
  end
end
