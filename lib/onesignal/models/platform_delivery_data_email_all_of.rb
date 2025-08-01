=begin
#OneSignal

#A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at onesignal.com

The version of the OpenAPI document: 5.2.0
Contact: devrel@onesignal.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module OneSignal
  class PlatformDeliveryDataEmailAllOf
    # Number of times an email has been opened.
    attr_accessor :opened

    # Number of unique recipients who have opened your email.
    attr_accessor :unique_opens

    # Number of clicked links from your email. This can include the recipient clicking email links multiple times.
    attr_accessor :clicks

    # Number of unique clicks that your recipients have made on links from your email.
    attr_accessor :unique_clicks

    # Number of recipients who registered as a hard or soft bounce and didn't receive your email.
    attr_accessor :bounced

    # Number of recipients who reported this email as spam.
    attr_accessor :reported_spam

    # Number of recipients who opted out of your emails using the unsubscribe link in this email.
    attr_accessor :unsubscribed

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'opened' => :'opened',
        :'unique_opens' => :'unique_opens',
        :'clicks' => :'clicks',
        :'unique_clicks' => :'unique_clicks',
        :'bounced' => :'bounced',
        :'reported_spam' => :'reported_spam',
        :'unsubscribed' => :'unsubscribed'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'opened' => :'Integer',
        :'unique_opens' => :'Integer',
        :'clicks' => :'Integer',
        :'unique_clicks' => :'Integer',
        :'bounced' => :'Integer',
        :'reported_spam' => :'Integer',
        :'unsubscribed' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'opened',
        :'unique_opens',
        :'clicks',
        :'unique_clicks',
        :'bounced',
        :'reported_spam',
        :'unsubscribed'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OneSignal::PlatformDeliveryDataEmailAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OneSignal::PlatformDeliveryDataEmailAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'opened')
        self.opened = attributes[:'opened']
      end

      if attributes.key?(:'unique_opens')
        self.unique_opens = attributes[:'unique_opens']
      end

      if attributes.key?(:'clicks')
        self.clicks = attributes[:'clicks']
      end

      if attributes.key?(:'unique_clicks')
        self.unique_clicks = attributes[:'unique_clicks']
      end

      if attributes.key?(:'bounced')
        self.bounced = attributes[:'bounced']
      end

      if attributes.key?(:'reported_spam')
        self.reported_spam = attributes[:'reported_spam']
      end

      if attributes.key?(:'unsubscribed')
        self.unsubscribed = attributes[:'unsubscribed']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          opened == o.opened &&
          unique_opens == o.unique_opens &&
          clicks == o.clicks &&
          unique_clicks == o.unique_clicks &&
          bounced == o.bounced &&
          reported_spam == o.reported_spam &&
          unsubscribed == o.unsubscribed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [opened, unique_opens, clicks, unique_clicks, bounced, reported_spam, unsubscribed].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OneSignal.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
