=begin
#OpenAPI Extension generating aliases to maps and arrays as models

#This specification shows how to generate aliases to maps and arrays as models.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module Petstore
  class UsageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Use alias to array
    # Use alias to array
    # @param [Hash] opts the optional parameters
    # @option opts [ArrayAlias] :array_alias 
    # @return [Object]
    def array(opts = {})
      data, _status_code, _headers = array_with_http_info(opts)
      data
    end

    # Use alias to array
    # Use alias to array
    # @param [Hash] opts the optional parameters
    # @option opts [ArrayAlias] :array_alias 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def array_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsageApi.array ...'
      end
      # resource path
      local_var_path = '/array'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'array_alias'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"UsageApi.array",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageApi#array\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Use alias to map
    # Use alias to map
    # @param [Hash] opts the optional parameters
    # @option opts [MapAlias] :map_alias 
    # @return [Object]
    def map(opts = {})
      data, _status_code, _headers = map_with_http_info(opts)
      data
    end

    # Use alias to map
    # Use alias to map
    # @param [Hash] opts the optional parameters
    # @option opts [MapAlias] :map_alias 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def map_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsageApi.map ...'
      end
      # resource path
      local_var_path = '/map'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'map_alias'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"UsageApi.map",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsageApi#map\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
