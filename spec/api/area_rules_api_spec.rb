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

# Unit tests for Vouchery::AreaRulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AreaRulesApi' do
  before do
    # run before each test
    @instance = Vouchery::AreaRulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AreaRulesApi' do
    it 'should create an instance of AreaRulesApi' do
      expect(@instance).to be_instance_of(Vouchery::AreaRulesApi)
    end
  end

  # unit tests for create_area_rule
  # Create an area rule
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @option opts [AreaRule] :area_rule 
  # @return [AreaRule]
  describe 'create_area_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_area_rule
  # Delete an area rule
  # @param id Area Rule ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_area_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_area_rule
  # Get an area rule
  # @param id Rule ID
  # @param [Hash] opts the optional parameters
  # @return [AreaRule]
  describe 'get_area_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_area_rules
  # Get all area rules for a campaign
  # @param campaign_id Campaign ID
  # @param [Hash] opts the optional parameters
  # @return [Array<AreaRule>]
  describe 'get_area_rules test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_area_rule
  # Update an area rule rule
  # @param id Rule ID
  # @param [Hash] opts the optional parameters
  # @option opts [AreaRule] :area_rule 
  # @return [AreaRule]
  describe 'update_area_rule test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
