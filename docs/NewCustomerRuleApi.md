# Vouchery::NewCustomerRuleApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_customer_rule**](NewCustomerRuleApi.md#create_new_customer_rule) | **POST** /campaigns/{campaign_id}/new_customer_rule | Create the new customer rule
[**delete_new_customer_rule**](NewCustomerRuleApi.md#delete_new_customer_rule) | **DELETE** /campaigns/{campaign_id}/new_customer_rule | Delete the new customer rule
[**get_new_customer_rule**](NewCustomerRuleApi.md#get_new_customer_rule) | **GET** /campaigns/{campaign_id}/new_customer_rule | Get the new customer rule
[**update_new_customer_rule**](NewCustomerRuleApi.md#update_new_customer_rule) | **PATCH** /campaigns/{campaign_id}/new_customer_rule | Update the new customer rule


# **create_new_customer_rule**
> NewCustomerRule create_new_customer_rule(campaign_id, opts)

Create the new customer rule

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

api_instance = Vouchery::NewCustomerRuleApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  new_customer_rule: Vouchery::NewCustomerRule.new # NewCustomerRule | 
}

begin
  #Create the new customer rule
  result = api_instance.create_new_customer_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling NewCustomerRuleApi->create_new_customer_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **new_customer_rule** | [**NewCustomerRule**](NewCustomerRule.md)|  | [optional] 

### Return type

[**NewCustomerRule**](NewCustomerRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_new_customer_rule**
> delete_new_customer_rule(campaign_id)

Delete the new customer rule

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

api_instance = Vouchery::NewCustomerRuleApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Delete the new customer rule
  api_instance.delete_new_customer_rule(campaign_id)
rescue Vouchery::ApiError => e
  puts "Exception when calling NewCustomerRuleApi->delete_new_customer_rule: #{e}"
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



# **get_new_customer_rule**
> NewCustomerRule get_new_customer_rule(campaign_id)

Get the new customer rule

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

api_instance = Vouchery::NewCustomerRuleApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get the new customer rule
  result = api_instance.get_new_customer_rule(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling NewCustomerRuleApi->get_new_customer_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**NewCustomerRule**](NewCustomerRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_new_customer_rule**
> NewCustomerRule update_new_customer_rule(campaign_id, opts)

Update the new customer rule

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

api_instance = Vouchery::NewCustomerRuleApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  new_customer_rule: Vouchery::NewCustomerRule.new # NewCustomerRule | 
}

begin
  #Update the new customer rule
  result = api_instance.update_new_customer_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling NewCustomerRuleApi->update_new_customer_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **new_customer_rule** | [**NewCustomerRule**](NewCustomerRule.md)|  | [optional] 

### Return type

[**NewCustomerRule**](NewCustomerRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



