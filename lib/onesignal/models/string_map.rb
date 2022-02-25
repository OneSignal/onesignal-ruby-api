=begin
#OneSignal

#A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at onesignal.com

The version of the OpenAPI document: 1.0.0
Contact: devrel@onesignal.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-SNAPSHOT

=end

require 'date'
require 'time'

module OneSignal
  class StringMap
    # Text in English.  Will be used as a fallback
    attr_accessor :en

    # Text in Arabic.
    attr_accessor :ar

    # Text in Bosnian.
    attr_accessor :bs

    # Text in Bulgarian.
    attr_accessor :bg

    # Text in Catalan.
    attr_accessor :ca

    # Text in Chinese (Simplified).
    attr_accessor :zh_hans

    # Text in Chinese (Traditional).
    attr_accessor :zh_hant

    # Alias for zh-Hans.
    attr_accessor :zh

    # Text in Croatian.
    attr_accessor :hr

    # Text in Czech.
    attr_accessor :cs

    # Text in Danish.
    attr_accessor :da

    # Text in Dutch.
    attr_accessor :nl

    # Text in Estonian.
    attr_accessor :et

    # Text in Finnish.
    attr_accessor :fi

    # Text in French.
    attr_accessor :fr

    # Text in Georgian.
    attr_accessor :ka

    # Text in German.
    attr_accessor :de

    # Text in Greek.
    attr_accessor :el

    # Text in Hindi.
    attr_accessor :hi

    # Text in Hebrew.
    attr_accessor :he

    # Text in Hungarian.
    attr_accessor :hu

    # Text in Indonesian.
    attr_accessor :id

    # Text in Italian.
    attr_accessor :it

    # Text in Japanese.
    attr_accessor :ja

    # Text in Korean.
    attr_accessor :ko

    # Text in Latvian.
    attr_accessor :lv

    # Text in Lithuanian.
    attr_accessor :lt

    # Text in Malay.
    attr_accessor :ms

    # Text in Norwegian.
    attr_accessor :nb

    # Text in Polish.
    attr_accessor :pl

    # Text in Persian.
    attr_accessor :fa

    # Text in Portugese.
    attr_accessor :pt

    # Text in Punjabi.
    attr_accessor :pa

    # Text in Romanian.
    attr_accessor :ro

    # Text in Russian.
    attr_accessor :ru

    # Text in Serbian.
    attr_accessor :sr

    # Text in Slovak.
    attr_accessor :sk

    # Text in Spanish.
    attr_accessor :es

    # Text in Swedish.
    attr_accessor :sv

    # Text in Thai.
    attr_accessor :th

    # Text in Turkish.
    attr_accessor :tr

    # Text in Ukrainian.
    attr_accessor :uk

    # Text in Vietnamese.
    attr_accessor :vi

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'en' => :'en',
        :'ar' => :'ar',
        :'bs' => :'bs',
        :'bg' => :'bg',
        :'ca' => :'ca',
        :'zh_hans' => :'zh-Hans',
        :'zh_hant' => :'zh-Hant',
        :'zh' => :'zh',
        :'hr' => :'hr',
        :'cs' => :'cs',
        :'da' => :'da',
        :'nl' => :'nl',
        :'et' => :'et',
        :'fi' => :'fi',
        :'fr' => :'fr',
        :'ka' => :'ka',
        :'de' => :'de',
        :'el' => :'el',
        :'hi' => :'hi',
        :'he' => :'he',
        :'hu' => :'hu',
        :'id' => :'id',
        :'it' => :'it',
        :'ja' => :'ja',
        :'ko' => :'ko',
        :'lv' => :'lv',
        :'lt' => :'lt',
        :'ms' => :'ms',
        :'nb' => :'nb',
        :'pl' => :'pl',
        :'fa' => :'fa',
        :'pt' => :'pt',
        :'pa' => :'pa',
        :'ro' => :'ro',
        :'ru' => :'ru',
        :'sr' => :'sr',
        :'sk' => :'sk',
        :'es' => :'es',
        :'sv' => :'sv',
        :'th' => :'th',
        :'tr' => :'tr',
        :'uk' => :'uk',
        :'vi' => :'vi'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'en' => :'String',
        :'ar' => :'String',
        :'bs' => :'String',
        :'bg' => :'String',
        :'ca' => :'String',
        :'zh_hans' => :'String',
        :'zh_hant' => :'String',
        :'zh' => :'String',
        :'hr' => :'String',
        :'cs' => :'String',
        :'da' => :'String',
        :'nl' => :'String',
        :'et' => :'String',
        :'fi' => :'String',
        :'fr' => :'String',
        :'ka' => :'String',
        :'de' => :'String',
        :'el' => :'String',
        :'hi' => :'String',
        :'he' => :'String',
        :'hu' => :'String',
        :'id' => :'String',
        :'it' => :'String',
        :'ja' => :'String',
        :'ko' => :'String',
        :'lv' => :'String',
        :'lt' => :'String',
        :'ms' => :'String',
        :'nb' => :'String',
        :'pl' => :'String',
        :'fa' => :'String',
        :'pt' => :'String',
        :'pa' => :'String',
        :'ro' => :'String',
        :'ru' => :'String',
        :'sr' => :'String',
        :'sk' => :'String',
        :'es' => :'String',
        :'sv' => :'String',
        :'th' => :'String',
        :'tr' => :'String',
        :'uk' => :'String',
        :'vi' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OneSignal::StringMap` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OneSignal::StringMap`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'en')
        self.en = attributes[:'en']
      end

      if attributes.key?(:'ar')
        self.ar = attributes[:'ar']
      end

      if attributes.key?(:'bs')
        self.bs = attributes[:'bs']
      end

      if attributes.key?(:'bg')
        self.bg = attributes[:'bg']
      end

      if attributes.key?(:'ca')
        self.ca = attributes[:'ca']
      end

      if attributes.key?(:'zh_hans')
        self.zh_hans = attributes[:'zh_hans']
      end

      if attributes.key?(:'zh_hant')
        self.zh_hant = attributes[:'zh_hant']
      end

      if attributes.key?(:'zh')
        self.zh = attributes[:'zh']
      end

      if attributes.key?(:'hr')
        self.hr = attributes[:'hr']
      end

      if attributes.key?(:'cs')
        self.cs = attributes[:'cs']
      end

      if attributes.key?(:'da')
        self.da = attributes[:'da']
      end

      if attributes.key?(:'nl')
        self.nl = attributes[:'nl']
      end

      if attributes.key?(:'et')
        self.et = attributes[:'et']
      end

      if attributes.key?(:'fi')
        self.fi = attributes[:'fi']
      end

      if attributes.key?(:'fr')
        self.fr = attributes[:'fr']
      end

      if attributes.key?(:'ka')
        self.ka = attributes[:'ka']
      end

      if attributes.key?(:'de')
        self.de = attributes[:'de']
      end

      if attributes.key?(:'el')
        self.el = attributes[:'el']
      end

      if attributes.key?(:'hi')
        self.hi = attributes[:'hi']
      end

      if attributes.key?(:'he')
        self.he = attributes[:'he']
      end

      if attributes.key?(:'hu')
        self.hu = attributes[:'hu']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'it')
        self.it = attributes[:'it']
      end

      if attributes.key?(:'ja')
        self.ja = attributes[:'ja']
      end

      if attributes.key?(:'ko')
        self.ko = attributes[:'ko']
      end

      if attributes.key?(:'lv')
        self.lv = attributes[:'lv']
      end

      if attributes.key?(:'lt')
        self.lt = attributes[:'lt']
      end

      if attributes.key?(:'ms')
        self.ms = attributes[:'ms']
      end

      if attributes.key?(:'nb')
        self.nb = attributes[:'nb']
      end

      if attributes.key?(:'pl')
        self.pl = attributes[:'pl']
      end

      if attributes.key?(:'fa')
        self.fa = attributes[:'fa']
      end

      if attributes.key?(:'pt')
        self.pt = attributes[:'pt']
      end

      if attributes.key?(:'pa')
        self.pa = attributes[:'pa']
      end

      if attributes.key?(:'ro')
        self.ro = attributes[:'ro']
      end

      if attributes.key?(:'ru')
        self.ru = attributes[:'ru']
      end

      if attributes.key?(:'sr')
        self.sr = attributes[:'sr']
      end

      if attributes.key?(:'sk')
        self.sk = attributes[:'sk']
      end

      if attributes.key?(:'es')
        self.es = attributes[:'es']
      end

      if attributes.key?(:'sv')
        self.sv = attributes[:'sv']
      end

      if attributes.key?(:'th')
        self.th = attributes[:'th']
      end

      if attributes.key?(:'tr')
        self.tr = attributes[:'tr']
      end

      if attributes.key?(:'uk')
        self.uk = attributes[:'uk']
      end

      if attributes.key?(:'vi')
        self.vi = attributes[:'vi']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @en.nil?
        invalid_properties.push('invalid value for "en", en cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @en.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          en == o.en &&
          ar == o.ar &&
          bs == o.bs &&
          bg == o.bg &&
          ca == o.ca &&
          zh_hans == o.zh_hans &&
          zh_hant == o.zh_hant &&
          zh == o.zh &&
          hr == o.hr &&
          cs == o.cs &&
          da == o.da &&
          nl == o.nl &&
          et == o.et &&
          fi == o.fi &&
          fr == o.fr &&
          ka == o.ka &&
          de == o.de &&
          el == o.el &&
          hi == o.hi &&
          he == o.he &&
          hu == o.hu &&
          id == o.id &&
          it == o.it &&
          ja == o.ja &&
          ko == o.ko &&
          lv == o.lv &&
          lt == o.lt &&
          ms == o.ms &&
          nb == o.nb &&
          pl == o.pl &&
          fa == o.fa &&
          pt == o.pt &&
          pa == o.pa &&
          ro == o.ro &&
          ru == o.ru &&
          sr == o.sr &&
          sk == o.sk &&
          es == o.es &&
          sv == o.sv &&
          th == o.th &&
          tr == o.tr &&
          uk == o.uk &&
          vi == o.vi
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [en, ar, bs, bg, ca, zh_hans, zh_hant, zh, hr, cs, da, nl, et, fi, fr, ka, de, el, hi, he, hu, id, it, ja, ko, lv, lt, ms, nb, pl, fa, pt, pa, ro, ru, sr, sk, es, sv, th, tr, uk, vi].hash
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