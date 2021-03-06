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
  class MaxDiscountRuleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create the max discount rule
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [MaxDiscountRule] :max_discount_rule 
    # @return [MaxDiscountRule]
    def create_max_discount_rule(campaign_id, opts = {})
      data, _status_code, _headers = create_max_discount_rule_with_http_info(campaign_id, opts)
      data
    end

    # Create the max discount rule
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [MaxDiscountRule] :max_discount_rule 
    # @return [Array<(MaxDiscountRule, Fixnum, Hash)>] MaxDiscountRule data, response status code and response headers
    def create_max_discount_rule_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaxDiscountRuleApi.create_max_discount_rule ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling MaxDiscountRuleApi.create_max_discount_rule"
      end
      # resource path
      local_var_path = '/campaigns/{campaign_id}/max_discount_rule'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'max_discount_rule'])
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MaxDiscountRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaxDiscountRuleApi#create_max_discount_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a rule
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_max_discount_rule(campaign_id, opts = {})
      delete_max_discount_rule_with_http_info(campaign_id, opts)
      nil
    end

    # Delete a rule
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_max_discount_rule_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaxDiscountRuleApi.delete_max_discount_rule ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling MaxDiscountRuleApi.delete_max_discount_rule"
      end
      # resource path
      local_var_path = '/campaigns/{campaign_id}/max_discount_rule'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)

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
        @api_client.config.logger.debug "API called: MaxDiscountRuleApi#delete_max_discount_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the max discount rule
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @return [MaxDiscountRule]
    def get_max_discount_rule(campaign_id, opts = {})
      data, _status_code, _headers = get_max_discount_rule_with_http_info(campaign_id, opts)
      data
    end

    # Get the max discount rule
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MaxDiscountRule, Fixnum, Hash)>] MaxDiscountRule data, response status code and response headers
    def get_max_discount_rule_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaxDiscountRuleApi.get_max_discount_rule ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling MaxDiscountRuleApi.get_max_discount_rule"
      end
      # resource path
      local_var_path = '/campaigns/{campaign_id}/max_discount_rule'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)

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
        :return_type => 'MaxDiscountRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaxDiscountRuleApi#get_max_discount_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the max discount rule
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [MaxDiscountRule] :max_discount_rule 
    # @return [MaxDiscountRule]
    def update_max_discount_rule(campaign_id, opts = {})
      data, _status_code, _headers = update_max_discount_rule_with_http_info(campaign_id, opts)
      data
    end

    # Update the max discount rule
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [MaxDiscountRule] :max_discount_rule 
    # @return [Array<(MaxDiscountRule, Fixnum, Hash)>] MaxDiscountRule data, response status code and response headers
    def update_max_discount_rule_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MaxDiscountRuleApi.update_max_discount_rule ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling MaxDiscountRuleApi.update_max_discount_rule"
      end
      # resource path
      local_var_path = '/campaigns/{campaign_id}/max_discount_rule'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'max_discount_rule'])
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MaxDiscountRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MaxDiscountRuleApi#update_max_discount_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
