# PipelinePublisher::StreamMetricsApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stream_metrics_get**](StreamMetricsApi.md#stream_metrics_get) | **GET** /stream_metrics | Fetches metrics about the stream


# **stream_metrics_get**
> stream_metrics_get(opts)

Fetches metrics about the stream

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

api_instance = PipelinePublisher::StreamMetricsApi.new

opts = { 
  count_since_timestamp: "count_since_timestamp_example" # String | ISO 8601 compliant timestamp to perform message count calculations from. Example: 2018-04-12T23:54:57.595Z
}

begin
  #Fetches metrics about the stream
  api_instance.stream_metrics_get(opts)
rescue PipelinePublisher::ApiError => e
  puts "Exception when calling StreamMetricsApi->stream_metrics_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count_since_timestamp** | **String**| ISO 8601 compliant timestamp to perform message count calculations from. Example: 2018-04-12T23:54:57.595Z | [optional] 

### Return type

nil (empty response body)

### Authorization

[basic](../README.md#basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



