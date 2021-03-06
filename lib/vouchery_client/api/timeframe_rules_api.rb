=begin
#Vouchery API Reference

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 1.0
Contact: hello@vouchery.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module Vouchery
  class TimeframeRulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a timeframe rule
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [TimeframeRule] :timeframe_rule 
    # @return [TimeframeRule]
    def create_timeframe_rule(campaign_id, opts = {})
      data, _status_code, _headers = create_timeframe_rule_with_http_info(campaign_id, opts)
      data
    end

    # Create a timeframe rule
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [TimeframeRule] :timeframe_rule 
    # @return [Array<(TimeframeRule, Fixnum, Hash)>] TimeframeRule data, response status code and response headers
    def create_timeframe_rule_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimeframeRulesApi.create_timeframe_rule ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling TimeframeRulesApi.create_timeframe_rule"
      end
      # resource path
      local_var_path = '/campaigns/{campaign_id}/timeframe_rules'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'timeframe_rule'])
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TimeframeRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimeframeRulesApi#create_timeframe_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a timeframe rule
    # @param id Rule ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_timeframe_rule(id, opts = {})
      delete_timeframe_rule_with_http_info(id, opts)
      nil
    end

    # Delete a timeframe rule
    # @param id Rule ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_timeframe_rule_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimeframeRulesApi.delete_timeframe_rule ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TimeframeRulesApi.delete_timeframe_rule"
      end
      # resource path
      local_var_path = '/timeframe_rules/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimeframeRulesApi#delete_timeframe_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a timeframe rule
    # @param id Rule ID
    # @param [Hash] opts the optional parameters
    # @return [TimeframeRule]
    def get_timeframe_rule(id, opts = {})
      data, _status_code, _headers = get_timeframe_rule_with_http_info(id, opts)
      data
    end

    # Get a timeframe rule
    # @param id Rule ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(TimeframeRule, Fixnum, Hash)>] TimeframeRule data, response status code and response headers
    def get_timeframe_rule_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimeframeRulesApi.get_timeframe_rule ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TimeframeRulesApi.get_timeframe_rule"
      end
      # resource path
      local_var_path = '/timeframe_rules/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TimeframeRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimeframeRulesApi#get_timeframe_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all timeframe rules for a campaign
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @return [Array<TimeframeRule>]
    def get_timeframe_rules(campaign_id, opts = {})
      data, _status_code, _headers = get_timeframe_rules_with_http_info(campaign_id, opts)
      data
    end

    # Get all timeframe rules for a campaign
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TimeframeRule>, Fixnum, Hash)>] Array<TimeframeRule> data, response status code and response headers
    def get_timeframe_rules_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimeframeRulesApi.get_timeframe_rules ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling TimeframeRulesApi.get_timeframe_rules"
      end
      # resource path
      local_var_path = '/campaigns/{campaign_id}/timeframe_rules'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<TimeframeRule>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimeframeRulesApi#get_timeframe_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a timeframe rule
    # @param id Rule ID
    # @param [Hash] opts the optional parameters
    # @option opts [TimeframeRule] :timeframe_rule 
    # @return [TimeframeRule]
    def update_timeframe_rule(id, opts = {})
      data, _status_code, _headers = update_timeframe_rule_with_http_info(id, opts)
      data
    end

    # Update a timeframe rule
    # @param id Rule ID
    # @param [Hash] opts the optional parameters
    # @option opts [TimeframeRule] :timeframe_rule 
    # @return [Array<(TimeframeRule, Fixnum, Hash)>] TimeframeRule data, response status code and response headers
    def update_timeframe_rule_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimeframeRulesApi.update_timeframe_rule ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TimeframeRulesApi.update_timeframe_rule"
      end
      # resource path
      local_var_path = '/timeframe_rules/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'timeframe_rule'])
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TimeframeRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimeframeRulesApi#update_timeframe_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
