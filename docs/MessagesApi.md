# PipelinePublisher::MessagesApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**messages_post**](MessagesApi.md#messages_post) | **POST** /messages | Creates a message on the pipeline


# **messages_post**
> messages_post(message)

Creates a message on the pipeline

### Example
```ruby
# load the gem
require 'pipeline_publisher_ruby'
# setup authorization
PipelinePublisher.configure do |config|
  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = PipelinePublisher::MessagesApi.new

message = PipelinePublisher::Message.new # Message | Note: At least one key/value pair for identifiers field is required.


begin
  #Creates a message on the pipeline
  api_instance.messages_post(message)
rescue PipelinePublisher::ApiError => e
  puts "Exception when calling MessagesApi->messages_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message** | [**Message**](Message.md)| Note: At least one key/value pair for identifiers field is required. | 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



