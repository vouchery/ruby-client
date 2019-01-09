# Vouchery::TimeframeRulesApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_timeframe_rule**](TimeframeRulesApi.md#create_timeframe_rule) | **POST** /campaigns/{campaign_id}/timeframe_rules | Create a timeframe rule
[**delete_timeframe_rule**](TimeframeRulesApi.md#delete_timeframe_rule) | **DELETE** /timeframe_rules/{id} | Delete a timeframe rule
[**get_timeframe_rule**](TimeframeRulesApi.md#get_timeframe_rule) | **GET** /timeframe_rules/{id} | Get a timeframe rule
[**get_timeframe_rules**](TimeframeRulesApi.md#get_timeframe_rules) | **GET** /campaigns/{campaign_id}/timeframe_rules | Get all timeframe rules for a campaign
[**update_timeframe_rule**](TimeframeRulesApi.md#update_timeframe_rule) | **PATCH** /timeframe_rules/{id} | Update a timeframe rule


# **create_timeframe_rule**
> TimeframeRule create_timeframe_rule(campaign_id, opts)

Create a timeframe rule

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

api_instance = Vouchery::TimeframeRulesApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  timeframe_rule: Vouchery::TimeframeRule.new # TimeframeRule | 
}

begin
  #Create a timeframe rule
  result = api_instance.create_timeframe_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling TimeframeRulesApi->create_timeframe_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **timeframe_rule** | [**TimeframeRule**](TimeframeRule.md)|  | [optional] 

### Return type

[**TimeframeRule**](TimeframeRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_timeframe_rule**
> delete_timeframe_rule(id)

Delete a timeframe rule

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

api_instance = Vouchery::TimeframeRulesApi.new
id = 56 # Integer | Rule ID

begin
  #Delete a timeframe rule
  api_instance.delete_timeframe_rule(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling TimeframeRulesApi->delete_timeframe_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_timeframe_rule**
> TimeframeRule get_timeframe_rule(id)

Get a timeframe rule

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

api_instance = Vouchery::TimeframeRulesApi.new
id = 56 # Integer | Rule ID

begin
  #Get a timeframe rule
  result = api_instance.get_timeframe_rule(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling TimeframeRulesApi->get_timeframe_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 

### Return type

[**TimeframeRule**](TimeframeRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_timeframe_rules**
> Array&lt;TimeframeRule&gt; get_timeframe_rules(campaign_id)

Get all timeframe rules for a campaign

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

api_instance = Vouchery::TimeframeRulesApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get all timeframe rules for a campaign
  result = api_instance.get_timeframe_rules(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling TimeframeRulesApi->get_timeframe_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**Array&lt;TimeframeRule&gt;**](TimeframeRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_timeframe_rule**
> TimeframeRule update_timeframe_rule(id, opts)

Update a timeframe rule

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

api_instance = Vouchery::TimeframeRulesApi.new
id = 56 # Integer | Rule ID
opts = {
  timeframe_rule: Vouchery::TimeframeRule.new # TimeframeRule | 
}

begin
  #Update a timeframe rule
  result = api_instance.update_timeframe_rule(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling TimeframeRulesApi->update_timeframe_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 
 **timeframe_rule** | [**TimeframeRule**](TimeframeRule.md)|  | [optional] 

### Return type

[**TimeframeRule**](TimeframeRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



