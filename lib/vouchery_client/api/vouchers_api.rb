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
  class VouchersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Batch create vouchers
    #  <p>Generate a batch of unique vouchers. Each voucher will be created using <code>{prefix}-{random code}</code> format where code will be a random string of requested type and length. <strong>A prefix needs to be unique within a project.</strong></p> <p> Following code types are supported: <ul> <li>digits</li> <li>letters</li> <li>mixed (digits and letters)</li> </ul> </p> <p>Allowed characters for each code type have been filtered to avoid typing mistakes. Maximum number of codes possible to generate in one batch request is 500 000.</p>
    # @param id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [Batch] :batch 
    # @return [Array<Voucher>]
    def batch_generate_vouchers(id, opts = {})
      data, _status_code, _headers = batch_generate_vouchers_with_http_info(id, opts)
      data
    end

    # Batch create vouchers
    #  &lt;p&gt;Generate a batch of unique vouchers. Each voucher will be created using &lt;code&gt;{prefix}-{random code}&lt;/code&gt; format where code will be a random string of requested type and length. &lt;strong&gt;A prefix needs to be unique within a project.&lt;/strong&gt;&lt;/p&gt; &lt;p&gt; Following code types are supported: &lt;ul&gt; &lt;li&gt;digits&lt;/li&gt; &lt;li&gt;letters&lt;/li&gt; &lt;li&gt;mixed (digits and letters)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; &lt;p&gt;Allowed characters for each code type have been filtered to avoid typing mistakes. Maximum number of codes possible to generate in one batch request is 500 000.&lt;/p&gt;
    # @param id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [Batch] :batch 
    # @return [Array<(Array<Voucher>, Fixnum, Hash)>] Array<Voucher> data, response status code and response headers
    def batch_generate_vouchers_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VouchersApi.batch_generate_vouchers ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VouchersApi.batch_generate_vouchers"
      end
      # resource path
      local_var_path = '/campaigns/{id}/vouchers/batch'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'batch'])
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Voucher>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VouchersApi#batch_generate_vouchers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a voucher
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [Voucher] :voucher 
    # @return [Voucher]
    def create_voucher(campaign_id, opts = {})
      data, _status_code, _headers = create_voucher_with_http_info(campaign_id, opts)
      data
    end

    # Create a voucher
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [Voucher] :voucher 
    # @return [Array<(Voucher, Fixnum, Hash)>] Voucher data, response status code and response headers
    def create_voucher_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VouchersApi.create_voucher ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling VouchersApi.create_voucher"
      end
      # resource path
      local_var_path = '/campaigns/{campaign_id}/vouchers'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'voucher'])
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Voucher')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VouchersApi#create_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a voucher
    # Delete a single voucher. Vouchers with at least one confirmed redemption can not be deleted.
    # @param id Voucher ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_voucher(id, opts = {})
      delete_voucher_with_http_info(id, opts)
      nil
    end

    # Delete a voucher
    # Delete a single voucher. Vouchers with at least one confirmed redemption can not be deleted.
    # @param id Voucher ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_voucher_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VouchersApi.delete_voucher ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VouchersApi.delete_voucher"
      end
      # resource path
      local_var_path = '/vouchers/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: VouchersApi#delete_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Find a voucher by campaign metadata
    # <p>Find voucher by campaign metadata.</p> <p>   Optionally assign found voucher to a customer by passing customer_identifier param.   All vouchers for a customer can be fetched at <a href=\"#get_customers-identifier-vouchers\">/customers/{id}/vouchers</a>. </p> <p>If no voucher is available this endpoint will return an empty response and HTTP code <code>204 No content</code></p> 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :medium 
    # @option opts [String] :customer_identifier \&quot;Assign found voucher to a customer with this identifier. Will create customer if not present. Optional.\&quot;
    # @return [Voucher]
    def find_voucher(opts = {})
      data, _status_code, _headers = find_voucher_with_http_info(opts)
      data
    end

    # Find a voucher by campaign metadata
    # &lt;p&gt;Find voucher by campaign metadata.&lt;/p&gt; &lt;p&gt;   Optionally assign found voucher to a customer by passing customer_identifier param.   All vouchers for a customer can be fetched at &lt;a href&#x3D;\&quot;#get_customers-identifier-vouchers\&quot;&gt;/customers/{id}/vouchers&lt;/a&gt;. &lt;/p&gt; &lt;p&gt;If no voucher is available this endpoint will return an empty response and HTTP code &lt;code&gt;204 No content&lt;/code&gt;&lt;/p&gt; 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :medium 
    # @option opts [String] :customer_identifier \&quot;Assign found voucher to a customer with this identifier. Will create customer if not present. Optional.\&quot;
    # @return [Array<(Voucher, Fixnum, Hash)>] Voucher data, response status code and response headers
    def find_voucher_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VouchersApi.find_voucher ...'
      end
      # resource path
      local_var_path = '/vouchers/find'

      # query parameters
      query_params = {}
      query_params[:'medium'] = @api_client.build_collection_param(opts[:'medium'], :multi) if !opts[:'medium'].nil?
      query_params[:'customer_identifier'] = opts[:'customer_identifier'] if !opts[:'customer_identifier'].nil?

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
        :return_type => 'Voucher')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VouchersApi#find_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a voucher
    # @param id Voucher ID
    # @param [Hash] opts the optional parameters
    # @return [Voucher]
    def get_voucher(id, opts = {})
      data, _status_code, _headers = get_voucher_with_http_info(id, opts)
      data
    end

    # Get a voucher
    # @param id Voucher ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Voucher, Fixnum, Hash)>] Voucher data, response status code and response headers
    def get_voucher_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VouchersApi.get_voucher ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VouchersApi.get_voucher"
      end
      # resource path
      local_var_path = '/vouchers/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Voucher')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VouchersApi#get_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all vouchers for a campaign
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @return [Array<Voucher>]
    def get_vouchers(campaign_id, opts = {})
      data, _status_code, _headers = get_vouchers_with_http_info(campaign_id, opts)
      data
    end

    # Get all vouchers for a campaign
    # @param campaign_id Campaign ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Voucher>, Fixnum, Hash)>] Array<Voucher> data, response status code and response headers
    def get_vouchers_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VouchersApi.get_vouchers ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling VouchersApi.get_vouchers"
      end
      # resource path
      local_var_path = '/campaigns/{campaign_id}/vouchers'.sub('{' + 'campaign_id' + '}', campaign_id.to_s)

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
        :return_type => 'Array<Voucher>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VouchersApi#get_vouchers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Import your own vouchers
    #  <p>Generate a batch of unique vouchers. Each voucher will be created using <code>{prefix}-{random code}</code> format where code will be a random string of requested type and length. <strong>A prefix needs to be unique within a project.</strong></p> <p> Following code types are supported: <ul> <li>digits</li> <li>letters</li> <li>mixed (digits and letters)</li> </ul> </p> <p>Allowed characters for each code type have been filtered to avoid typing mistakes. Maximum number of codes possible to generate in one batch request is 500 000.</p>
    # @param id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [File] :body 
    # @return [InlineResponse200]
    def import_vouchers(id, opts = {})
      data, _status_code, _headers = import_vouchers_with_http_info(id, opts)
      data
    end

    # Import your own vouchers
    #  &lt;p&gt;Generate a batch of unique vouchers. Each voucher will be created using &lt;code&gt;{prefix}-{random code}&lt;/code&gt; format where code will be a random string of requested type and length. &lt;strong&gt;A prefix needs to be unique within a project.&lt;/strong&gt;&lt;/p&gt; &lt;p&gt; Following code types are supported: &lt;ul&gt; &lt;li&gt;digits&lt;/li&gt; &lt;li&gt;letters&lt;/li&gt; &lt;li&gt;mixed (digits and letters)&lt;/li&gt; &lt;/ul&gt; &lt;/p&gt; &lt;p&gt;Allowed characters for each code type have been filtered to avoid typing mistakes. Maximum number of codes possible to generate in one batch request is 500 000.&lt;/p&gt;
    # @param id Campaign ID
    # @param [Hash] opts the optional parameters
    # @option opts [File] :body 
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def import_vouchers_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VouchersApi.import_vouchers ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VouchersApi.import_vouchers"
      end
      # resource path
      local_var_path = '/campaigns/{id}/vouchers/import'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['text/csv'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VouchersApi#import_vouchers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a voucher
    # Vouchers with at least one confirmed redemption can not be changed.
    # @param id Voucher ID
    # @param [Hash] opts the optional parameters
    # @option opts [Voucher] :voucher 
    # @return [Voucher]
    def update_voucher(id, opts = {})
      data, _status_code, _headers = update_voucher_with_http_info(id, opts)
      data
    end

    # Update a voucher
    # Vouchers with at least one confirmed redemption can not be changed.
    # @param id Voucher ID
    # @param [Hash] opts the optional parameters
    # @option opts [Voucher] :voucher 
    # @return [Array<(Voucher, Fixnum, Hash)>] Voucher data, response status code and response headers
    def update_voucher_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VouchersApi.update_voucher ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VouchersApi.update_voucher"
      end
      # resource path
      local_var_path = '/vouchers/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'voucher'])
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Voucher')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VouchersApi#update_voucher\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
