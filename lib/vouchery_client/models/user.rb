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
  class User
    attr_accessor :type

    attr_accessor :id

    attr_accessor :name

    attr_accessor :email

    attr_accessor :team

    attr_accessor :role

    attr_accessor :access_scope

    attr_accessor :active

    attr_accessor :masked_api_key

    attr_accessor :last_sign_in_at

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
        :'id' => :'id',
        :'name' => :'name',
        :'email' => :'email',
        :'team' => :'team',
        :'role' => :'role',
        :'access_scope' => :'access_scope',
        :'active' => :'active',
        :'masked_api_key' => :'masked_api_key',
        :'last_sign_in_at' => :'last_sign_in_at',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'id' => :'Integer',
        :'name' => :'String',
        :'email' => :'String',
        :'team' => :'String',
        :'role' => :'String',
        :'access_scope' => :'String',
        :'active' => :'Boolean',
        :'masked_api_key' => :'String',
        :'last_sign_in_at' => :'DateTime',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'team',
        :'masked_api_key',
        :'last_sign_in_at',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vouchery::User` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vouchery::User`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      end

      if attributes.key?(:'access_scope')
        self.access_scope = attributes[:'access_scope']
      end

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'masked_api_key')
        self.masked_api_key = attributes[:'masked_api_key']
      end

      if attributes.key?(:'last_sign_in_at')
        self.last_sign_in_at = attributes[:'last_sign_in_at']
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
      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @role.nil?
        invalid_properties.push('invalid value for "role", role cannot be nil.')
      end

      if @access_scope.nil?
        invalid_properties.push('invalid value for "access_scope", access_scope cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ["User"])
      return false unless type_validator.valid?(@type)
      return false if @email.nil?
      return false if @role.nil?
      role_validator = EnumAttributeValidator.new('String', ["admin", "point_of_distribution", "point_of_sale"])
      return false unless role_validator.valid?(@role)
      return false if @access_scope.nil?
      access_scope_validator = EnumAttributeValidator.new('String', ["project", "campaign", "team"])
      return false unless access_scope_validator.valid?(@access_scope)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["User"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] role Object to be assigned
    def role=(role)
      validator = EnumAttributeValidator.new('String', ["admin", "point_of_distribution", "point_of_sale"])
      unless validator.valid?(role)
        fail ArgumentError, "invalid value for \"role\", must be one of #{validator.allowable_values}."
      end
      @role = role
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] access_scope Object to be assigned
    def access_scope=(access_scope)
      validator = EnumAttributeValidator.new('String', ["project", "campaign", "team"])
      unless validator.valid?(access_scope)
        fail ArgumentError, "invalid value for \"access_scope\", must be one of #{validator.allowable_values}."
      end
      @access_scope = access_scope
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          id == o.id &&
          name == o.name &&
          email == o.email &&
          team == o.team &&
          role == o.role &&
          access_scope == o.access_scope &&
          active == o.active &&
          masked_api_key == o.masked_api_key &&
          last_sign_in_at == o.last_sign_in_at &&
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
      [type, id, name, email, team, role, access_scope, active, masked_api_key, last_sign_in_at, created_at, updated_at].hash
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
