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
  class MainCampaign
    # This field is required only when you create a campaign. Main Campaign is a wrapper for multipe Sub Campaings, grouped together. Main Campaign can have own budget and redemptions limit.
    attr_accessor :type

    attr_accessor :id

    # The name of the campaign must be unique.
    attr_accessor :name

    # What type of trigger sub campaign is reacting on to check rules and give rewards.
    attr_accessor :triggers_on

    # If campaign is triggered by custom trigger, it's name should be specified.
    attr_accessor :trigger_name

    # Valid template values for MainCampaign are: discount, loyalty, gift_card.
    attr_accessor :template

    attr_accessor :description

    # The budget available for all discount campaigns grouped by this campaign.
    attr_accessor :max_total_budget

    # The maximum number of redemptions available across all discount campaigns grouped by this campaign.
    attr_accessor :max_redemptions

    attr_accessor :team

    attr_accessor :budget_code

    # List of child campaigns
    attr_accessor :children

    attr_accessor :created_at

    attr_accessor :created_by

    attr_accessor :updated_at

    attr_accessor :updated_by

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
        :'triggers_on' => :'triggers_on',
        :'trigger_name' => :'trigger_name',
        :'template' => :'template',
        :'description' => :'description',
        :'max_total_budget' => :'max_total_budget',
        :'max_redemptions' => :'max_redemptions',
        :'team' => :'team',
        :'budget_code' => :'budget_code',
        :'children' => :'children',
        :'created_at' => :'created_at',
        :'created_by' => :'created_by',
        :'updated_at' => :'updated_at',
        :'updated_by' => :'updated_by'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'id' => :'Integer',
        :'name' => :'String',
        :'triggers_on' => :'String',
        :'trigger_name' => :'String',
        :'template' => :'String',
        :'description' => :'String',
        :'max_total_budget' => :'Float',
        :'max_redemptions' => :'Float',
        :'team' => :'String',
        :'budget_code' => :'String',
        :'children' => :'Array<MainCampaignChildren>',
        :'created_at' => :'DateTime',
        :'created_by' => :'CampaignCreatedBy',
        :'updated_at' => :'DateTime',
        :'updated_by' => :'CampaignCreatedBy'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'triggers_on',
        :'trigger_name',
        :'description',
        :'max_total_budget',
        :'max_redemptions',
        :'team',
        :'budget_code',
        :'children',
      ])
    end

    # discriminator's property name in OpenAPI v3
    def self.openapi_discriminator_name
      :'type'
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Vouchery::MainCampaign` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Vouchery::MainCampaign`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'triggers_on')
        self.triggers_on = attributes[:'triggers_on']
      end

      if attributes.key?(:'trigger_name')
        self.trigger_name = attributes[:'trigger_name']
      end

      if attributes.key?(:'template')
        self.template = attributes[:'template']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'max_total_budget')
        self.max_total_budget = attributes[:'max_total_budget']
      end

      if attributes.key?(:'max_redemptions')
        self.max_redemptions = attributes[:'max_redemptions']
      end

      if attributes.key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.key?(:'budget_code')
        self.budget_code = attributes[:'budget_code']
      end

      if attributes.key?(:'children')
        if (value = attributes[:'children']).is_a?(Array)
          self.children = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'updated_by')
        self.updated_by = attributes[:'updated_by']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["MainCampaign"])
      return false unless type_validator.valid?(@type)
      triggers_on_validator = EnumAttributeValidator.new('String', ["customer_points_change", "redemption", "custom"])
      return false unless triggers_on_validator.valid?(@triggers_on)
      template_validator = EnumAttributeValidator.new('String', ["discount", "loyalty", "gift_card"])
      return false unless template_validator.valid?(@template)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["MainCampaign"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] triggers_on Object to be assigned
    def triggers_on=(triggers_on)
      validator = EnumAttributeValidator.new('String', ["customer_points_change", "redemption", "custom"])
      unless validator.valid?(triggers_on)
        fail ArgumentError, "invalid value for \"triggers_on\", must be one of #{validator.allowable_values}."
      end
      @triggers_on = triggers_on
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] template Object to be assigned
    def template=(template)
      validator = EnumAttributeValidator.new('String', ["discount", "loyalty", "gift_card"])
      unless validator.valid?(template)
        fail ArgumentError, "invalid value for \"template\", must be one of #{validator.allowable_values}."
      end
      @template = template
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          id == o.id &&
          name == o.name &&
          triggers_on == o.triggers_on &&
          trigger_name == o.trigger_name &&
          template == o.template &&
          description == o.description &&
          max_total_budget == o.max_total_budget &&
          max_redemptions == o.max_redemptions &&
          team == o.team &&
          budget_code == o.budget_code &&
          children == o.children &&
          created_at == o.created_at &&
          created_by == o.created_by &&
          updated_at == o.updated_at &&
          updated_by == o.updated_by
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, id, name, triggers_on, trigger_name, template, description, max_total_budget, max_redemptions, team, budget_code, children, created_at, created_by, updated_at, updated_by].hash
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