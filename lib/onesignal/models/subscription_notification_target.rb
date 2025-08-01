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
  class SubscriptionNotificationTarget
    # Specific subscription ids to send your notification to. _Does not require API Auth Key._ Not compatible with any other targeting parameters. Example: [\"1dd608f2-c6a1-11e3-851d-000c2940e62c\"] Limit of 2,000 entries per REST API call 
    attr_accessor :include_subscription_ids

    # Recommended for Sending Emails - Target specific email addresses. If an email does not correspond to an existing user, a new user will be created. Example: nick@catfac.ts Limit of 2,000 entries per REST API call 
    attr_accessor :include_email_tokens

    # Recommended for Sending SMS - Target specific phone numbers. The phone number should be in the E.164 format. Phone number should be an existing subscriber on OneSignal. Refer our docs to learn how to add phone numbers to OneSignal. Example phone number: +1999999999 Limit of 2,000 entries per REST API call 
    attr_accessor :include_phone_numbers

    # Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using iOS device tokens. Warning: Only works with Production tokens. All non-alphanumeric characters must be removed from each token. If a token does not correspond to an existing user, a new user will be created. Example: ce777617da7f548fe7a9ab6febb56cf39fba6d38203... Limit of 2,000 entries per REST API call 
    attr_accessor :include_ios_tokens

    # Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using Windows URIs. If a token does not correspond to an existing user, a new user will be created. Example: http://s.notify.live.net/u/1/bn1/HmQAAACPaLDr-... Limit of 2,000 entries per REST API call 
    attr_accessor :include_wp_wns_uris

    # Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using Amazon ADM registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: amzn1.adm-registration.v1.XpvSSUk0Rc3hTVVV... Limit of 2,000 entries per REST API call 
    attr_accessor :include_amazon_reg_ids

    # Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using Chrome App registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: APA91bEeiUeSukAAUdnw3O2RB45FWlSpgJ7Ji_... Limit of 2,000 entries per REST API call 
    attr_accessor :include_chrome_reg_ids

    # Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using Chrome Web Push registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: APA91bEeiUeSukAAUdnw3O2RB45FWlSpgJ7Ji_... Limit of 2,000 entries per REST API call 
    attr_accessor :include_chrome_web_reg_ids

    # Not Recommended: Please consider using include_subscription_ids or include_aliases instead. Target using Android device registration IDs. If a token does not correspond to an existing user, a new user will be created. Example: APA91bEeiUeSukAAUdnw3O2RB45FWlSpgJ7Ji_... Limit of 2,000 entries per REST API call 
    attr_accessor :include_android_reg_ids

    # Target specific users by aliases assigned via API. An alias can be an external_id, onesignal_id, or a custom alias. Accepts an object where keys are alias labels and values are arrays of alias IDs to include Example usage: { \"external_id\": [\"exId1\", \"extId2\"], \"internal_label\": [\"id1\", \"id2\"] } Not compatible with any other targeting parameters. REQUIRED: REST API Key Authentication Limit of 2,000 entries per REST API call Note: If targeting push, email, or sms subscribers with same ids, use with target_channel to indicate you are sending a push or email or sms.
    attr_accessor :include_aliases

    attr_accessor :target_channel

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'include_subscription_ids' => :'include_subscription_ids',
        :'include_email_tokens' => :'include_email_tokens',
        :'include_phone_numbers' => :'include_phone_numbers',
        :'include_ios_tokens' => :'include_ios_tokens',
        :'include_wp_wns_uris' => :'include_wp_wns_uris',
        :'include_amazon_reg_ids' => :'include_amazon_reg_ids',
        :'include_chrome_reg_ids' => :'include_chrome_reg_ids',
        :'include_chrome_web_reg_ids' => :'include_chrome_web_reg_ids',
        :'include_android_reg_ids' => :'include_android_reg_ids',
        :'include_aliases' => :'include_aliases',
        :'target_channel' => :'target_channel'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'include_subscription_ids' => :'Array<String>',
        :'include_email_tokens' => :'Array<String>',
        :'include_phone_numbers' => :'Array<String>',
        :'include_ios_tokens' => :'Array<String>',
        :'include_wp_wns_uris' => :'Array<String>',
        :'include_amazon_reg_ids' => :'Array<String>',
        :'include_chrome_reg_ids' => :'Array<String>',
        :'include_chrome_web_reg_ids' => :'Array<String>',
        :'include_android_reg_ids' => :'Array<String>',
        :'include_aliases' => :'Hash<String, Array<String>>',
        :'target_channel' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'include_subscription_ids',
        :'include_aliases',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OneSignal::SubscriptionNotificationTarget` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OneSignal::SubscriptionNotificationTarget`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'include_subscription_ids')
        if (value = attributes[:'include_subscription_ids']).is_a?(Array)
          self.include_subscription_ids = value
        end
      end

      if attributes.key?(:'include_email_tokens')
        if (value = attributes[:'include_email_tokens']).is_a?(Array)
          self.include_email_tokens = value
        end
      end

      if attributes.key?(:'include_phone_numbers')
        if (value = attributes[:'include_phone_numbers']).is_a?(Array)
          self.include_phone_numbers = value
        end
      end

      if attributes.key?(:'include_ios_tokens')
        if (value = attributes[:'include_ios_tokens']).is_a?(Array)
          self.include_ios_tokens = value
        end
      end

      if attributes.key?(:'include_wp_wns_uris')
        if (value = attributes[:'include_wp_wns_uris']).is_a?(Array)
          self.include_wp_wns_uris = value
        end
      end

      if attributes.key?(:'include_amazon_reg_ids')
        if (value = attributes[:'include_amazon_reg_ids']).is_a?(Array)
          self.include_amazon_reg_ids = value
        end
      end

      if attributes.key?(:'include_chrome_reg_ids')
        if (value = attributes[:'include_chrome_reg_ids']).is_a?(Array)
          self.include_chrome_reg_ids = value
        end
      end

      if attributes.key?(:'include_chrome_web_reg_ids')
        if (value = attributes[:'include_chrome_web_reg_ids']).is_a?(Array)
          self.include_chrome_web_reg_ids = value
        end
      end

      if attributes.key?(:'include_android_reg_ids')
        if (value = attributes[:'include_android_reg_ids']).is_a?(Array)
          self.include_android_reg_ids = value
        end
      end

      if attributes.key?(:'include_aliases')
        if (value = attributes[:'include_aliases']).is_a?(Hash)
          self.include_aliases = value
        end
      end

      if attributes.key?(:'target_channel')
        self.target_channel = attributes[:'target_channel']
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
      target_channel_validator = EnumAttributeValidator.new('String', ["push", "email", "sms"])
      return false unless target_channel_validator.valid?(@target_channel)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] target_channel Object to be assigned
    def target_channel=(target_channel)
      validator = EnumAttributeValidator.new('String', ["push", "email", "sms"])
      unless validator.valid?(target_channel)
        fail ArgumentError, "invalid value for \"target_channel\", must be one of #{validator.allowable_values}."
      end
      @target_channel = target_channel
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          include_subscription_ids == o.include_subscription_ids &&
          include_email_tokens == o.include_email_tokens &&
          include_phone_numbers == o.include_phone_numbers &&
          include_ios_tokens == o.include_ios_tokens &&
          include_wp_wns_uris == o.include_wp_wns_uris &&
          include_amazon_reg_ids == o.include_amazon_reg_ids &&
          include_chrome_reg_ids == o.include_chrome_reg_ids &&
          include_chrome_web_reg_ids == o.include_chrome_web_reg_ids &&
          include_android_reg_ids == o.include_android_reg_ids &&
          include_aliases == o.include_aliases &&
          target_channel == o.target_channel
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [include_subscription_ids, include_email_tokens, include_phone_numbers, include_ios_tokens, include_wp_wns_uris, include_amazon_reg_ids, include_chrome_reg_ids, include_chrome_web_reg_ids, include_android_reg_ids, include_aliases, target_channel].hash
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
