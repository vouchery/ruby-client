=begin
#Vouchery API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0
Contact: hello@vouchery.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Vouchery::RuleProductItemExistsItemConditions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RuleProductItemExistsItemConditions' do
  before do
    # run before each test
    @instance = Vouchery::RuleProductItemExistsItemConditions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RuleProductItemExistsItemConditions' do
    it 'should create an instance of RuleProductItemExistsItemConditions' do
      expect(@instance).to be_instance_of(Vouchery::RuleProductItemExistsItemConditions)
    end
  end
  describe 'test attribute "field"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["name", "price", "sku", "quantity", "product_identifier", "weight", "categories"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.field = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "operator"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["equals", "is_more", "is_more_or_equal", "is_less", "is_less_or_equal", "between", "division_remainder_equals_zero", "include"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.operator = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
