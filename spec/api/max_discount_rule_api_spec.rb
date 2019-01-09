=begin
#Vouchery API Reference

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 1.0
Contact: hello@vouchery.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'spec_helper'
require 'json'

# Unit tests for Vouchery::MaxDiscountRuleApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MaxDiscountRuleApi' do
  before do
    # run before each test
    @instance = Vouchery::MaxDiscountRuleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MaxDiscountRuleApi' do
    it 'should create an instance of MaxDiscountRuleApi' do
      expect(@instance).to be_instance_of(Vouchery::MaxDiscountRuleApi)
    end
  end

  # unit tests for create_max_discount_rule
  # Create the max discount rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @option opts [MaxDiscountRule] :max_discount_rule 
  # @return [MaxDiscountRule]
  describe 'create_max_discount_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_max_discount_rule
  # Delete a rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_max_discount_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_max_discount_rule
  # Get the max discount rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @return [MaxDiscountRule]
  describe 'get_max_discount_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_max_discount_rule
  # Update the max discount rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @option opts [MaxDiscountRule] :max_discount_rule 
  # @return [MaxDiscountRule]
  describe 'update_max_discount_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
