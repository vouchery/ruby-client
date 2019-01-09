# Vouchery::CategoryRulesApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_category_rule**](CategoryRulesApi.md#create_category_rule) | **POST** /campaigns/{campaign_id}/category_rules | Create a category rule
[**delete_category_rule**](CategoryRulesApi.md#delete_category_rule) | **DELETE** /category_rules/{id} | Delete a category rule
[**get_category_rule**](CategoryRulesApi.md#get_category_rule) | **GET** /category_rules/{id} | Get a category rule
[**get_category_rules**](CategoryRulesApi.md#get_category_rules) | **GET** /campaigns/{campaign_id}/category_rules | Get all category rules for a campaign
[**update_category_rule**](CategoryRulesApi.md#update_category_rule) | **PATCH** /category_rules/{id} | Update a category rule


# **create_category_rule**
> CategoryRule create_category_rule(campaign_id, opts)

Create a category rule

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

api_instance = Vouchery::CategoryRulesApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  category_rule: Vouchery::CategoryRule.new # CategoryRule | 
}

begin
  #Create a category rule
  result = api_instance.create_category_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CategoryRulesApi->create_category_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **category_rule** | [**CategoryRule**](CategoryRule.md)|  | [optional] 

### Return type

[**CategoryRule**](CategoryRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_category_rule**
> delete_category_rule(id)

Delete a category rule

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

api_instance = Vouchery::CategoryRulesApi.new
id = 56 # Integer | Rule ID

begin
  #Delete a category rule
  api_instance.delete_category_rule(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling CategoryRulesApi->delete_category_rule: #{e}"
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



# **get_category_rule**
> CategoryRule get_category_rule(id)

Get a category rule

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

api_instance = Vouchery::CategoryRulesApi.new
id = 56 # Integer | Rule ID

begin
  #Get a category rule
  result = api_instance.get_category_rule(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CategoryRulesApi->get_category_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 

### Return type

[**CategoryRule**](CategoryRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_category_rules**
> Array&lt;CategoryRule&gt; get_category_rules(campaign_id)

Get all category rules for a campaign

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

api_instance = Vouchery::CategoryRulesApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get all category rules for a campaign
  result = api_instance.get_category_rules(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CategoryRulesApi->get_category_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**Array&lt;CategoryRule&gt;**](CategoryRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_category_rule**
> CategoryRule update_category_rule(id, opts)

Update a category rule

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

api_instance = Vouchery::CategoryRulesApi.new
id = 56 # Integer | Rule ID
opts = {
  category_rule: Vouchery::CategoryRule.new # CategoryRule | 
}

begin
  #Update a category rule
  result = api_instance.update_category_rule(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CategoryRulesApi->update_category_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 
 **category_rule** | [**CategoryRule**](CategoryRule.md)|  | [optional] 

### Return type

[**CategoryRule**](CategoryRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



