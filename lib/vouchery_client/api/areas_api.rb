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
  class AreasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an area
    # @param [Hash] opts the optional parameters
    # @option opts [Area] :area 
    # @return [Area]
    def create_area(opts = {})
      data, _status_code, _headers = create_area_with_http_info(opts)
      data
    end

    # Create an area
    # @param [Hash] opts the optional parameters
    # @option opts [Area] :area 
    # @return [Array<(Area, Fixnum, Hash)>] Area data, response status code and response headers
    def create_area_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AreasApi.create_area ...'
      end
      # resource path
      local_var_path = '/areas'

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
      post_body = @api_client.object_to_http_body(opts[:'area'])
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Area')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AreasApi#create_area\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an area
    # @param id Area ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_area(id, opts = {})
      delete_area_with_http_info(id, opts)
      nil
    end

    # Delete an area
    # @param id Area ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_area_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AreasApi.delete_area ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AreasApi.delete_area"
      end
      # resource path
      local_var_path = '/areas/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: AreasApi#delete_area\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an area
    # @param id Area ID
    # @param [Hash] opts the optional parameters
    # @return [Area]
    def get_area(id, opts = {})
      data, _status_code, _headers = get_area_with_http_info(id, opts)
      data
    end

    # Get an area
    # @param id Area ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Area, Fixnum, Hash)>] Area data, response status code and response headers
    def get_area_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AreasApi.get_area ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AreasApi.get_area"
      end
      # resource path
      local_var_path = '/areas/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Area')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AreasApi#get_area\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all areas
    # @param [Hash] opts the optional parameters
    # @return [Array<Area>]
    def get_areas(opts = {})
      data, _status_code, _headers = get_areas_with_http_info(opts)
      data
    end

    # Get all areas
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Area>, Fixnum, Hash)>] Array<Area> data, response status code and response headers
    def get_areas_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AreasApi.get_areas ...'
      end
      # resource path
      local_var_path = '/areas'

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
        :return_type => 'Array<Area>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AreasApi#get_areas\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an area
    # @param id Area ID
    # @param [Hash] opts the optional parameters
    # @option opts [Area] :area 
    # @return [Area]
    def update_area(id, opts = {})
      data, _status_code, _headers = update_area_with_http_info(id, opts)
      data
    end

    # Update an area
    # @param id Area ID
    # @param [Hash] opts the optional parameters
    # @option opts [Area] :area 
    # @return [Array<(Area, Fixnum, Hash)>] Area data, response status code and response headers
    def update_area_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AreasApi.update_area ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AreasApi.update_area"
      end
      # resource path
      local_var_path = '/areas/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'area'])
      auth_names = ['Basic']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Area')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AreasApi#update_area\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
