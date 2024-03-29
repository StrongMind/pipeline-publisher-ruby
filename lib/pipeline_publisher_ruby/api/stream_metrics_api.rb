=begin
#API v1.0.2

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.0.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module PipelinePublisher
  class StreamMetricsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Fetches metrics about the stream
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :count_since_timestamp ISO 8601 compliant timestamp to perform message count calculations from. Example: 2018-04-12T23:54:57.595123Z
    # @option opts [String] :count_until_timestamp ISO 8601 compliant timestamp to perform message count calculations until. Example: 2018-04-12T23:54:57.595123Z
    # @return [InlineResponse200]
    def stream_metrics_get(opts = {})
      data, _status_code, _headers = stream_metrics_get_with_http_info(opts)
      return data
    end

    # Fetches metrics about the stream
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :count_since_timestamp ISO 8601 compliant timestamp to perform message count calculations from. Example: 2018-04-12T23:54:57.595123Z
    # @option opts [String] :count_until_timestamp ISO 8601 compliant timestamp to perform message count calculations until. Example: 2018-04-12T23:54:57.595123Z
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def stream_metrics_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StreamMetricsApi.stream_metrics_get ..."
      end
      # resource path
      local_var_path = "/stream_metrics"

      # query parameters
      query_params = {}
      query_params[:'count_since_timestamp'] = opts[:'count_since_timestamp'] if !opts[:'count_since_timestamp'].nil?
      query_params[:'count_until_timestamp'] = opts[:'count_until_timestamp'] if !opts[:'count_until_timestamp'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StreamMetricsApi#stream_metrics_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
