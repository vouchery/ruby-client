# Vouchery::PerCustomerRuleApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_per_customer_rule**](PerCustomerRuleApi.md#create_per_customer_rule) | **POST** /campaigns/{campaign_id}/per_customer_rule | Create the per customer rule
[**delete_per_customer_rule**](PerCustomerRuleApi.md#delete_per_customer_rule) | **DELETE** /campaigns/{campaign_id}/per_customer_rule | Delete the per customer rule
[**get_per_customer_rule**](PerCustomerRuleApi.md#get_per_customer_rule) | **GET** /campaigns/{campaign_id}/per_customer_rule | Get the per customer rule
[**update_per_customer_rule**](PerCustomerRuleApi.md#update_per_customer_rule) | **PATCH** /campaigns/{campaign_id}/per_customer_rule | Update the per customer rule


# **create_per_customer_rule**
> PerCustomerRule create_per_customer_rule(campaign_id, opts)

Create the per customer rule

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

api_instance = Vouchery::PerCustomerRuleApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  per_customer_rule: Vouchery::PerCustomerRule.new # PerCustomerRule | 
}

begin
  #Create the per customer rule
  result = api_instance.create_per_customer_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling PerCustomerRuleApi->create_per_customer_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **per_customer_rule** | [**PerCustomerRule**](PerCustomerRule.md)|  | [optional] 

### Return type

[**PerCustomerRule**](PerCustomerRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_per_customer_rule**
> delete_per_customer_rule(campaign_id)

Delete the per customer rule

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

api_instance = Vouchery::PerCustomerRuleApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Delete the per customer rule
  api_instance.delete_per_customer_rule(campaign_id)
rescue Vouchery::ApiError => e
  puts "Exception when calling PerCustomerRuleApi->delete_per_customer_rule: #{e}"
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



# **get_per_customer_rule**
> PerCustomerRule get_per_customer_rule(campaign_id)

Get the per customer rule

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

api_instance = Vouchery::PerCustomerRuleApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get the per customer rule
  result = api_instance.get_per_customer_rule(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling PerCustomerRuleApi->get_per_customer_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**PerCustomerRule**](PerCustomerRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_per_customer_rule**
> PerCustomerRule update_per_customer_rule(campaign_id, opts)

Update the per customer rule

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

api_instance = Vouchery::PerCustomerRuleApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  per_customer_rule: Vouchery::PerCustomerRule.new # PerCustomerRule | 
}

begin
  #Update the per customer rule
  result = api_instance.update_per_customer_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling PerCustomerRuleApi->update_per_customer_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **per_customer_rule** | [**PerCustomerRule**](PerCustomerRule.md)|  | [optional] 

### Return type

[**PerCustomerRule**](PerCustomerRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



