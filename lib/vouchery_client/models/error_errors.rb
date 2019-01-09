=begin
#Vouchery API Reference

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 1.0
Contact: hello@vouchery.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module Vouchery
  class ErrorErrors
    # Attribute name
    attr_accessor :attribute

    # Machine-readable API error code
    attr_accessor :code

    # Human-readable error message
    attr_accessor :message

    # Minimum, maximum, or expected value for this attribute
    attr_accessor :boundary_value

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
        :'attribute' => :'attribute',
        :'code' => :'code',
        :'message' => :'message',
        :'boundary_value' => :'boundary_value'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'attribute' => :'String',
        :'code' => :'String',
        :'message' => :'String',
        :'boundary_value' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'attribute')
        self.attribute = attributes[:'attribute']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'boundary_value')
        self.boundary_value = attributes[:'boundary_value']
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
      code_validator = EnumAttributeValidator.new('String', ['required', 'below_minimum', 'above_maximum', 'unexpected_value', 'must_be_unique', 'should_match_confirmation', 'must_be_accepted', 'must_be_null', 'too_short', 'too_long', 'wrong_length', 'invalid', 'invalid_date', 'invalid_time', 'invalid_datetime', 'not_allowed_to_have_vouchers', 'already_confirmed', 'missing_required_tags', 'includes_forbidden_tags', 'missing_required_category', 'outside_of_permitted_areas', 'not_valid_at_this_time', 'not_active', 'maximum_redemptions_exceeded', 'budget_exceeded', 'total_budget_exceeded', 'yearly_budget_exceeded', 'quarterly_budget_exceeded', 'monthly_budget_exceeded', 'weekly_budget_exceeded', 'daily_budget_exceeded', 'hourly_budget_exceeded', 'new_customer_required', 'per_customer_limit_exceeded', 'time_limit_expired', 'redemptions_limit_exceeded', 'below_campaign_minimum', 'above_campaign_maximum', 'unknown_tags', 'does_not_match_assigned_customer', 'unique_code_already_used'])
      return false unless code_validator.valid?(@code)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code)
      validator = EnumAttributeValidator.new('String', ['required', 'below_minimum', 'above_maximum', 'unexpected_value', 'must_be_unique', 'should_match_confirmation', 'must_be_accepted', 'must_be_null', 'too_short', 'too_long', 'wrong_length', 'invalid', 'invalid_date', 'invalid_time', 'invalid_datetime', 'not_allowed_to_have_vouchers', 'already_confirmed', 'missing_required_tags', 'includes_forbidden_tags', 'missing_required_category', 'outside_of_permitted_areas', 'not_valid_at_this_time', 'not_active', 'maximum_redemptions_exceeded', 'budget_exceeded', 'total_budget_exceeded', 'yearly_budget_exceeded', 'quarterly_budget_exceeded', 'monthly_budget_exceeded', 'weekly_budget_exceeded', 'daily_budget_exceeded', 'hourly_budget_exceeded', 'new_customer_required', 'per_customer_limit_exceeded', 'time_limit_expired', 'redemptions_limit_exceeded', 'below_campaign_minimum', 'above_campaign_maximum', 'unknown_tags', 'does_not_match_assigned_customer', 'unique_code_already_used'])
      unless validator.valid?(code)
        fail ArgumentError, 'invalid value for "code", must be one of #{validator.allowable_values}.'
      end
      @code = code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attribute == o.attribute &&
          code == o.code &&
          message == o.message &&
          boundary_value == o.boundary_value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [attribute, code, message, boundary_value].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
      when :BOOLEAN
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
        temp_model = Vouchery.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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