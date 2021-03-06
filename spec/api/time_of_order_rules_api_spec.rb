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

# Unit tests for Vouchery::TimeOfOrderRulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TimeOfOrderRulesApi' do
  before do
    # run before each test
    @instance = Vouchery::TimeOfOrderRulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TimeOfOrderRulesApi' do
    it 'should create an instance of TimeOfOrderRulesApi' do
      expect(@instance).to be_instance_of(Vouchery::TimeOfOrderRulesApi)
    end
  end

  # unit tests for create_time_of_order_rule
  # Create a time of order rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @option opts [TimeOfOrderRule] :time_of_order_rule 
  # @return [TimeOfOrderRule]
  describe 'create_time_of_order_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_time_of_order_rule
  # Delete a time of order rule
  # @param id Rule ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_time_of_order_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_time_of_order_rule
  # Get a time of order rule
  # @param id Time of order rule ID
  # @param [Hash] opts the optional parameters
  # @return [TimeOfOrderRule]
  describe 'get_time_of_order_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_time_of_order_rules
  # Get all time of order rules for a campaign
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @return [Array<TimeOfOrderRule>]
  describe 'get_time_of_order_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_time_of_order_rule
  # Update a time of order rule
  # @param id Rule ID
  # @param [Hash] opts the optional parameters
  # @option opts [TimeOfOrderRule] :time_of_order_rule 
  # @return [TimeOfOrderRule]
  describe 'update_time_of_order_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
