# Vouchery::MaxDiscountRuleApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_max_discount_rule**](MaxDiscountRuleApi.md#create_max_discount_rule) | **POST** /campaigns/{campaign_id}/max_discount_rule | Create the max discount rule
[**delete_max_discount_rule**](MaxDiscountRuleApi.md#delete_max_discount_rule) | **DELETE** /campaigns/{campaign_id}/max_discount_rule | Delete a rule
[**get_max_discount_rule**](MaxDiscountRuleApi.md#get_max_discount_rule) | **GET** /campaigns/{campaign_id}/max_discount_rule | Get the max discount rule
[**update_max_discount_rule**](MaxDiscountRuleApi.md#update_max_discount_rule) | **PATCH** /campaigns/{campaign_id}/max_discount_rule | Update the max discount rule


# **create_max_discount_rule**
> MaxDiscountRule create_max_discount_rule(campaign_id, opts)

Create the max discount rule

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

api_instance = Vouchery::MaxDiscountRuleApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  max_discount_rule: Vouchery::MaxDiscountRule.new # MaxDiscountRule | 
}

begin
  #Create the max discount rule
  result = api_instance.create_max_discount_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling MaxDiscountRuleApi->create_max_discount_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **max_discount_rule** | [**MaxDiscountRule**](MaxDiscountRule.md)|  | [optional] 

### Return type

[**MaxDiscountRule**](MaxDiscountRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_max_discount_rule**
> delete_max_discount_rule(campaign_id)

Delete a rule

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

api_instance = Vouchery::MaxDiscountRuleApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Delete a rule
  api_instance.delete_max_discount_rule(campaign_id)
rescue Vouchery::ApiError => e
  puts "Exception when calling MaxDiscountRuleApi->delete_max_discount_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_max_discount_rule**
> MaxDiscountRule get_max_discount_rule(campaign_id)

Get the max discount rule

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

api_instance = Vouchery::MaxDiscountRuleApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get the max discount rule
  result = api_instance.get_max_discount_rule(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling MaxDiscountRuleApi->get_max_discount_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**MaxDiscountRule**](MaxDiscountRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_max_discount_rule**
> MaxDiscountRule update_max_discount_rule(campaign_id, opts)

Update the max discount rule

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

api_instance = Vouchery::MaxDiscountRuleApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  max_discount_rule: Vouchery::MaxDiscountRule.new # MaxDiscountRule | 
}

begin
  #Update the max discount rule
  result = api_instance.update_max_discount_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling MaxDiscountRuleApi->update_max_discount_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **max_discount_rule** | [**MaxDiscountRule**](MaxDiscountRule.md)|  | [optional] 

### Return type

[**MaxDiscountRule**](MaxDiscountRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



