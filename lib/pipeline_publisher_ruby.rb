=begin
#API V1

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'pipeline_publisher_ruby/api_client'
require 'pipeline_publisher_ruby/api_error'
require 'pipeline_publisher_ruby/version'
require 'pipeline_publisher_ruby/configuration'

# Models
require 'pipeline_publisher_ruby/models/message'

# APIs
require 'pipeline_publisher_ruby/api/messages_api'

module PipelinePublisherRuby
  class << self
    # Customize default settings for the SDK using block.
    #   PipelinePublisherRuby.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
