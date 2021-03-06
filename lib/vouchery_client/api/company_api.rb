=begin
#Vouchery API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0
Contact: hello@vouchery.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module Vouchery
  class CompanyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Update company details
    # @param [Hash] opts the optional parameters
    # @option opts [Company] :company 
    # @return [Company]
    def update_company(opts = {})
      data, _status_code, _headers = update_company_with_http_info(opts)
      data
    end

    # Update company details
    # @param [Hash] opts the optional parameters
    # @option opts [Company] :company 
    # @return [Array<(Company, Integer, Hash)>] Company data, response status code and response headers
    def update_company_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompanyApi.update_company ...'
      end
      # resource path
      local_var_path = '/company'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'company']) 

      # return_type
      return_type = opts[:return_type] || 'Company' 

      # auth_names
      auth_names = opts[:auth_names] || ['Bearer']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyApi#update_company\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
