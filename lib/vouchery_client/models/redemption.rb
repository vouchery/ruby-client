=begin
#Vouchery API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0
Contact: hello@vouchery.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'date'

module Vouchery
  class Redemption
    attr_accessor :type

    # Unique transaction ID which identifies underlying transaction in your system, e.g. order number, invoice number
    attr_accessor :transaction_id

    # A string uniquely identifying customer in your system. Please check customers API.
    attr_accessor :customer_identifier

    attr_accessor :total_transaction_cost

    # How many minutes should the redemption be valid for before it expires.
    attr_accessor :ttl

    attr_accessor :granted_discount

    attr_accessor :user_agent

    attr_accessor :voucher

    # Only confirmed redemption are counted towards budget and total number of redemptions.
    attr_accessor :confirmed

    # Array of product items, associated with a redemption
    attr_accessor :product_items

    attr_accessor :validated_at

    attr_accessor :expires_at

    attr_accessor :confirmed_at

    attr_accessor :created_at

    attr_accessor :updated_at

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
        :'type' => :'type',
        :'transaction_id' => :'transaction_id',
        :'customer_identifier' => :'customer_identifier',
        :'total_transaction_cost' => :'total_transaction_cost',
        :'ttl' => :'ttl',
        :'granted_discount' => :'granted_discount',
        :'user_agent' => :'user_agent',
        :'voucher' => :'voucher',
        :'confirmed' => :'confirmed',
        :'product_items' => :'product_items',
        :'validated_at' => :'validated_at',
        :'expires_at' => :'expires_at',
        :'confirmed_at' => :'confirmed_at',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'transaction_id' => :'String',
        :'customer_identifier' => :'String',
        :'total_transaction_cost' => :'Float',
        :'ttl' => :'Float',
        :'granted_discount' => :'Float',
        :'user_agent' => :'String',
        :'voucher' => :'RedemptionVoucher',
        :'confirmed' => :'Boolean',
        :'product_items' => :'Array<RedemptionProductItems>',
        :'validated_at' => :'DateTime',
        :'expires_at' => :'DateTime',
        :'confirmed_at' => :'DateTime',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ttl',
        :'user_agent',
        :'expires_at',
        :'confirmed_at',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vouchery::Redemption` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vouchery::Redemption`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'customer_identifier')
        self.customer_identifier = attributes[:'customer_identifier']
      end

      if attributes.key?(:'total_transaction_cost')
        self.total_transaction_cost = attributes[:'total_transaction_cost']
      end

      if attributes.key?(:'ttl')
        self.ttl = attributes[:'ttl']
      end

      if attributes.key?(:'granted_discount')
        self.granted_discount = attributes[:'granted_discount']
      end

      if attributes.key?(:'user_agent')
        self.user_agent = attributes[:'user_agent']
      end

      if attributes.key?(:'voucher')
        self.voucher = attributes[:'voucher']
      end

      if attributes.key?(:'confirmed')
        self.confirmed = attributes[:'confirmed']
      end

      if attributes.key?(:'product_items')
        if (value = attributes[:'product_items']).is_a?(Array)
          self.product_items = value
        end
      end

      if attributes.key?(:'validated_at')
        self.validated_at = attributes[:'validated_at']
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.key?(:'confirmed_at')
        self.confirmed_at = attributes[:'confirmed_at']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @transaction_id.nil?
        invalid_properties.push('invalid value for "transaction_id", transaction_id cannot be nil.')
      end

      if @total_transaction_cost.nil?
        invalid_properties.push('invalid value for "total_transaction_cost", total_transaction_cost cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ["Redemption"])
      return false unless type_validator.valid?(@type)
      return false if @transaction_id.nil?
      return false if @total_transaction_cost.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Redemption"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          transaction_id == o.transaction_id &&
          customer_identifier == o.customer_identifier &&
          total_transaction_cost == o.total_transaction_cost &&
          ttl == o.ttl &&
          granted_discount == o.granted_discount &&
          user_agent == o.user_agent &&
          voucher == o.voucher &&
          confirmed == o.confirmed &&
          product_items == o.product_items &&
          validated_at == o.validated_at &&
          expires_at == o.expires_at &&
          confirmed_at == o.confirmed_at &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, transaction_id, customer_identifier, total_transaction_cost, ttl, granted_discount, user_agent, voucher, confirmed, product_items, validated_at, expires_at, confirmed_at, created_at, updated_at].hash
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
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
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
        Vouchery.const_get(type).build_from_hash(value)
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
