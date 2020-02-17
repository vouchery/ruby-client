# Vouchery::TriggersApi

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_trigger**](TriggersApi.md#create_trigger) | **POST** /triggers | Create a trigger



## create_trigger

> Trigger create_trigger(opts)

Create a trigger

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Vouchery::TriggersApi.new
opts = {
  trigger: Vouchery::Trigger.new # Trigger | 
}

begin
  #Create a trigger
  result = api_instance.create_trigger(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling TriggersApi->create_trigger: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trigger** | [**Trigger**](Trigger.md)|  | [optional] 

### Return type

[**Trigger**](Trigger.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

