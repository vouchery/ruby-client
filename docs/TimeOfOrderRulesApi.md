# Vouchery::TimeOfOrderRulesApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_time_of_order_rule**](TimeOfOrderRulesApi.md#create_time_of_order_rule) | **POST** /campaigns/{campaign_id}/time_of_order_rules | Create a time of order rule
[**delete_time_of_order_rule**](TimeOfOrderRulesApi.md#delete_time_of_order_rule) | **DELETE** /time_of_order_rules/{id} | Delete a time of order rule
[**get_time_of_order_rule**](TimeOfOrderRulesApi.md#get_time_of_order_rule) | **GET** /time_of_order_rules/{id} | Get a time of order rule
[**get_time_of_order_rules**](TimeOfOrderRulesApi.md#get_time_of_order_rules) | **GET** /campaigns/{campaign_id}/time_of_order_rules | Get all time of order rules for a campaign
[**update_time_of_order_rule**](TimeOfOrderRulesApi.md#update_time_of_order_rule) | **PATCH** /time_of_order_rules/{id} | Update a time of order rule


# **create_time_of_order_rule**
> TimeOfOrderRule create_time_of_order_rule(campaign_id, opts)

Create a time of order rule

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

api_instance = Vouchery::TimeOfOrderRulesApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  time_of_order_rule: Vouchery::TimeOfOrderRule.new # TimeOfOrderRule | 
}

begin
  #Create a time of order rule
  result = api_instance.create_time_of_order_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling TimeOfOrderRulesApi->create_time_of_order_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **time_of_order_rule** | [**TimeOfOrderRule**](TimeOfOrderRule.md)|  | [optional] 

### Return type

[**TimeOfOrderRule**](TimeOfOrderRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_time_of_order_rule**
> delete_time_of_order_rule(id)

Delete a time of order rule

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

api_instance = Vouchery::TimeOfOrderRulesApi.new
id = 56 # Integer | Rule ID

begin
  #Delete a time of order rule
  api_instance.delete_time_of_order_rule(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling TimeOfOrderRulesApi->delete_time_of_order_rule: #{e}"
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



# **get_time_of_order_rule**
> TimeOfOrderRule get_time_of_order_rule(id)

Get a time of order rule

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

api_instance = Vouchery::TimeOfOrderRulesApi.new
id = 56 # Integer | Time of order rule ID

begin
  #Get a time of order rule
  result = api_instance.get_time_of_order_rule(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling TimeOfOrderRulesApi->get_time_of_order_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Time of order rule ID | 

### Return type

[**TimeOfOrderRule**](TimeOfOrderRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_time_of_order_rules**
> Array&lt;TimeOfOrderRule&gt; get_time_of_order_rules(campaign_id)

Get all time of order rules for a campaign

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

api_instance = Vouchery::TimeOfOrderRulesApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get all time of order rules for a campaign
  result = api_instance.get_time_of_order_rules(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling TimeOfOrderRulesApi->get_time_of_order_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**Array&lt;TimeOfOrderRule&gt;**](TimeOfOrderRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_time_of_order_rule**
> TimeOfOrderRule update_time_of_order_rule(id, opts)

Update a time of order rule

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

api_instance = Vouchery::TimeOfOrderRulesApi.new
id = 56 # Integer | Rule ID
opts = {
  time_of_order_rule: Vouchery::TimeOfOrderRule.new # TimeOfOrderRule | 
}

begin
  #Update a time of order rule
  result = api_instance.update_time_of_order_rule(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling TimeOfOrderRulesApi->update_time_of_order_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 
 **time_of_order_rule** | [**TimeOfOrderRule**](TimeOfOrderRule.md)|  | [optional] 

### Return type

[**TimeOfOrderRule**](TimeOfOrderRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



