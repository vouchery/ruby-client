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

# Unit tests for Vouchery::TimeframeRulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TimeframeRulesApi' do
  before do
    # run before each test
    @instance = Vouchery::TimeframeRulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TimeframeRulesApi' do
    it 'should create an instance of TimeframeRulesApi' do
      expect(@instance).to be_instance_of(Vouchery::TimeframeRulesApi)
    end
  end

  # unit tests for create_timeframe_rule
  # Create a timeframe rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @option opts [TimeframeRule] :timeframe_rule 
  # @return [TimeframeRule]
  describe 'create_timeframe_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_timeframe_rule
  # Delete a timeframe rule
  # @param id Rule ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_timeframe_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_timeframe_rule
  # Get a timeframe rule
  # @param id Rule ID
  # @param [Hash] opts the optional parameters
  # @return [TimeframeRule]
  describe 'get_timeframe_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_timeframe_rules
  # Get all timeframe rules for a campaign
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @return [Array<TimeframeRule>]
  describe 'get_timeframe_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_timeframe_rule
  # Update a timeframe rule
  # @param id Rule ID
  # @param [Hash] opts the optional parameters
  # @option opts [TimeframeRule] :timeframe_rule 
  # @return [TimeframeRule]
  describe 'update_timeframe_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end