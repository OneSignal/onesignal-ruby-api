=begin
#OneSignal

#A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at onesignal.com

The version of the OpenAPI document: 1.4.0
Contact: devrel@onesignal.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module OneSignal
  class Player
    # The device's OneSignal ID
    attr_accessor :id

    # If true, this is the equivalent of a user being Unsubscribed
    attr_accessor :invalid_identifier

    attr_accessor :app_id

    # Required The device's platform:   0 = iOS   1 = Android   2 = Amazon   3 = WindowsPhone (MPNS)   4 = Chrome Apps / Extensions   5 = Chrome Web Push   6 = Windows (WNS)   7 = Safari   8 = Firefox   9 = MacOS   10 = Alexa   11 = Email   13 = For Huawei App Gallery Builds SDK Setup. Not for Huawei Devices using FCM   14 = SMS 
    attr_accessor :device_type

    # a custom user ID
    attr_accessor :external_user_id

    # Only required if you have enabled Identity Verification and device_type is NOT 11 email.
    attr_accessor :external_user_id_auth_hash

    # Email - Only required if you have enabled Identity Verification and device_type is email (11).
    attr_accessor :email_auth_hash

    # Recommended: For Push Notifications, this is the Push Token Identifier from Google or Apple. For Apple Push identifiers, you must strip all non alphanumeric characters. Examples: iOS: 7abcd558f29d0b1f048083e2834ad8ea4b3d87d8ad9c088b33c132706ff445f0 Android: APA91bHbYHk7aq-Uam_2pyJ2qbZvqllyyh2wjfPRaw5gLEX2SUlQBRvOc6sck1sa7H7nGeLNlDco8lXj83HWWwzV... For Email Addresses, set the full email address email@email.com and make sure to set device_type to 11. 
    attr_accessor :identifier

    # Language code. Typically lower case two letters, except for Chinese where it must be one of zh-Hans or zh-Hant. Example: en 
    attr_accessor :language

    # Number of seconds away from UTC. Example: -28800 
    attr_accessor :timezone

    # Version of your app. Example: 1.1 
    attr_accessor :game_version

    # Device make and model. Example: iPhone5,1 
    attr_accessor :device_model

    # Device operating system version. Example: 7.0.4 
    attr_accessor :device_os

    # The ad id for the device's platform: Android = Advertising Id iOS = identifierForVendor WP8.0 = DeviceUniqueId WP8.1 = AdvertisingId 
    attr_accessor :ad_id

    # Name and version of the sdk/plugin that's calling this API method (if any)
    attr_accessor :sdk

    # Number of times the user has played the game, defaults to 1
    attr_accessor :session_count

    # Custom tags for the player. Only support string and integer key value pairs. Does not support arrays or other nested objects. Setting a tag value to null or an empty string will remove the tag. Example: {\"foo\":\"bar\",\"this\":\"that\"} Limitations: - 100 tags per call - Android SDK users: tags cannot be removed or changed via API if set through SDK sendTag methods. Recommended to only tag devices with 1 kilobyte of data Please consider using your own Database to save more than 1 kilobyte of data. See: Internal Database & CRM 
    attr_accessor :tags

    # Amount the user has spent in USD, up to two decimal places
    attr_accessor :amount_spent

    # Unixtime when the player joined the game
    attr_accessor :created_at

    # Seconds player was running your app.
    attr_accessor :playtime

    # Current iOS badge count displayed on the app icon NOTE: Not supported for apps created after June 2018, since badge count for apps created after this date are handled on the client. 
    attr_accessor :badge_count

    # Unixtime when the player was last active
    attr_accessor :last_active

    # 1 = subscribed -2 = unsubscribed iOS - These values are set each time the user opens the app from the SDK. Use the SDK function set Subscription instead. Android - You may set this but you can no longer use the SDK method setSubscription later in your app as it will create synchronization issues. 
    attr_accessor :notification_types

    # This is used in deciding whether to use your iOS Sandbox or Production push certificate when sending a push when both have been uploaded. Set to the iOS provisioning profile that was used to build your app. 1 = Development 2 = Ad-Hoc Omit this field for App Store builds. 
    attr_accessor :test_type

    # Longitude of the device, used for geotagging to segment on.
    attr_accessor :long

    # Latitude of the device, used for geotagging to segment on.
    attr_accessor :lat

    # Country code in the ISO 3166-1 Alpha 2 format
    attr_accessor :country

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'invalid_identifier' => :'invalid_identifier',
        :'app_id' => :'app_id',
        :'device_type' => :'device_type',
        :'external_user_id' => :'external_user_id',
        :'external_user_id_auth_hash' => :'external_user_id_auth_hash',
        :'email_auth_hash' => :'email_auth_hash',
        :'identifier' => :'identifier',
        :'language' => :'language',
        :'timezone' => :'timezone',
        :'game_version' => :'game_version',
        :'device_model' => :'device_model',
        :'device_os' => :'device_os',
        :'ad_id' => :'ad_id',
        :'sdk' => :'sdk',
        :'session_count' => :'session_count',
        :'tags' => :'tags',
        :'amount_spent' => :'amount_spent',
        :'created_at' => :'created_at',
        :'playtime' => :'playtime',
        :'badge_count' => :'badge_count',
        :'last_active' => :'last_active',
        :'notification_types' => :'notification_types',
        :'test_type' => :'test_type',
        :'long' => :'long',
        :'lat' => :'lat',
        :'country' => :'country'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'invalid_identifier' => :'Boolean',
        :'app_id' => :'String',
        :'device_type' => :'Integer',
        :'external_user_id' => :'String',
        :'external_user_id_auth_hash' => :'String',
        :'email_auth_hash' => :'String',
        :'identifier' => :'String',
        :'language' => :'String',
        :'timezone' => :'Integer',
        :'game_version' => :'String',
        :'device_model' => :'String',
        :'device_os' => :'String',
        :'ad_id' => :'String',
        :'sdk' => :'String',
        :'session_count' => :'Integer',
        :'tags' => :'Object',
        :'amount_spent' => :'Float',
        :'created_at' => :'Integer',
        :'playtime' => :'Integer',
        :'badge_count' => :'Integer',
        :'last_active' => :'Integer',
        :'notification_types' => :'Integer',
        :'test_type' => :'Integer',
        :'long' => :'Float',
        :'lat' => :'Float',
        :'country' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'external_user_id',
        :'identifier',
        :'timezone',
        :'game_version',
        :'device_model',
        :'device_os',
        :'ad_id',
        :'sdk',
        :'tags',
        :'test_type',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OneSignal::Player` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OneSignal::Player`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'invalid_identifier')
        self.invalid_identifier = attributes[:'invalid_identifier']
      end

      if attributes.key?(:'app_id')
        self.app_id = attributes[:'app_id']
      end

      if attributes.key?(:'device_type')
        self.device_type = attributes[:'device_type']
      end

      if attributes.key?(:'external_user_id')
        self.external_user_id = attributes[:'external_user_id']
      end

      if attributes.key?(:'external_user_id_auth_hash')
        self.external_user_id_auth_hash = attributes[:'external_user_id_auth_hash']
      end

      if attributes.key?(:'email_auth_hash')
        self.email_auth_hash = attributes[:'email_auth_hash']
      end

      if attributes.key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'game_version')
        self.game_version = attributes[:'game_version']
      end

      if attributes.key?(:'device_model')
        self.device_model = attributes[:'device_model']
      end

      if attributes.key?(:'device_os')
        self.device_os = attributes[:'device_os']
      end

      if attributes.key?(:'ad_id')
        self.ad_id = attributes[:'ad_id']
      end

      if attributes.key?(:'sdk')
        self.sdk = attributes[:'sdk']
      end

      if attributes.key?(:'session_count')
        self.session_count = attributes[:'session_count']
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.key?(:'amount_spent')
        self.amount_spent = attributes[:'amount_spent']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'playtime')
        self.playtime = attributes[:'playtime']
      end

      if attributes.key?(:'badge_count')
        self.badge_count = attributes[:'badge_count']
      end

      if attributes.key?(:'last_active')
        self.last_active = attributes[:'last_active']
      end

      if attributes.key?(:'notification_types')
        self.notification_types = attributes[:'notification_types']
      end

      if attributes.key?(:'test_type')
        self.test_type = attributes[:'test_type']
      end

      if attributes.key?(:'long')
        self.long = attributes[:'long']
      end

      if attributes.key?(:'lat')
        self.lat = attributes[:'lat']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @device_type.nil?
        invalid_properties.push('invalid value for "device_type", device_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @device_type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          invalid_identifier == o.invalid_identifier &&
          app_id == o.app_id &&
          device_type == o.device_type &&
          external_user_id == o.external_user_id &&
          external_user_id_auth_hash == o.external_user_id_auth_hash &&
          email_auth_hash == o.email_auth_hash &&
          identifier == o.identifier &&
          language == o.language &&
          timezone == o.timezone &&
          game_version == o.game_version &&
          device_model == o.device_model &&
          device_os == o.device_os &&
          ad_id == o.ad_id &&
          sdk == o.sdk &&
          session_count == o.session_count &&
          tags == o.tags &&
          amount_spent == o.amount_spent &&
          created_at == o.created_at &&
          playtime == o.playtime &&
          badge_count == o.badge_count &&
          last_active == o.last_active &&
          notification_types == o.notification_types &&
          test_type == o.test_type &&
          long == o.long &&
          lat == o.lat &&
          country == o.country
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, invalid_identifier, app_id, device_type, external_user_id, external_user_id_auth_hash, email_auth_hash, identifier, language, timezone, game_version, device_model, device_os, ad_id, sdk, session_count, tags, amount_spent, created_at, playtime, badge_count, last_active, notification_types, test_type, long, lat, country].hash
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
