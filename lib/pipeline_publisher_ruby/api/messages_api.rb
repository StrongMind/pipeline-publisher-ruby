=begin
#API v1.0.2

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.0.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module PipelinePublisher
  class MessagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Creates a message on the pipeline
    # 
    # @param message Note: At least one key/value pair for identifiers field is required.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def messages_post(message, opts = {})
      messages_post_with_http_info(message, opts)
      return nil
    end

    # Creates a message on the pipeline
    # 
    # @param message Note: At least one key/value pair for identifiers field is required.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def messages_post_with_http_info(message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MessagesApi.messages_post ..."
      end
      # verify the required parameter 'message' is set
      if @api_client.config.client_side_validation && message.nil?
        fail ArgumentError, "Missing the required parameter 'message' when calling MessagesApi.messages_post"
      end
      # resource path
      local_var_path = "/messages"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(message)
      auth_names = ['basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MessagesApi#messages_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
