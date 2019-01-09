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

# Unit tests for Vouchery::NewCustomerRuleApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NewCustomerRuleApi' do
  before do
    # run before each test
    @instance = Vouchery::NewCustomerRuleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NewCustomerRuleApi' do
    it 'should create an instance of NewCustomerRuleApi' do
      expect(@instance).to be_instance_of(Vouchery::NewCustomerRuleApi)
    end
  end

  # unit tests for create_new_customer_rule
  # Create the new customer rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @option opts [NewCustomerRule] :new_customer_rule 
  # @return [NewCustomerRule]
  describe 'create_new_customer_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_new_customer_rule
  # Delete the new customer rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_new_customer_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_new_customer_rule
  # Get the new customer rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @return [NewCustomerRule]
  describe 'get_new_customer_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_new_customer_rule
  # Update the new customer rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @option opts [NewCustomerRule] :new_customer_rule 
  # @return [NewCustomerRule]
  describe 'update_new_customer_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end