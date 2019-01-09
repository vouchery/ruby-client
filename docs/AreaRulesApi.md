# Vouchery::AreaRulesApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_area_rule**](AreaRulesApi.md#create_area_rule) | **POST** /campaigns/{campaign_id}/area_rules | Create an area rule
[**delete_area_rule**](AreaRulesApi.md#delete_area_rule) | **DELETE** /area_rules/{id} | Delete an area rule
[**get_area_rule**](AreaRulesApi.md#get_area_rule) | **GET** /area_rules/{id} | Get an area rule
[**get_area_rules**](AreaRulesApi.md#get_area_rules) | **GET** /campaigns/{campaign_id}/area_rules | Get all area rules for a campaign
[**update_area_rule**](AreaRulesApi.md#update_area_rule) | **PATCH** /area_rules/{id} | Update an area rule rule


# **create_area_rule**
> AreaRule create_area_rule(campaign_id, opts)

Create an area rule

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

api_instance = Vouchery::AreaRulesApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  area_rule: Vouchery::AreaRule.new # AreaRule | 
}

begin
  #Create an area rule
  result = api_instance.create_area_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling AreaRulesApi->create_area_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **area_rule** | [**AreaRule**](AreaRule.md)|  | [optional] 

### Return type

[**AreaRule**](AreaRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_area_rule**
> delete_area_rule(id)

Delete an area rule

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

api_instance = Vouchery::AreaRulesApi.new
id = 56 # Integer | Area Rule ID

begin
  #Delete an area rule
  api_instance.delete_area_rule(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling AreaRulesApi->delete_area_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Area Rule ID | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_area_rule**
> AreaRule get_area_rule(id)

Get an area rule

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

api_instance = Vouchery::AreaRulesApi.new
id = 56 # Integer | Rule ID

begin
  #Get an area rule
  result = api_instance.get_area_rule(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling AreaRulesApi->get_area_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 

### Return type

[**AreaRule**](AreaRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_area_rules**
> Array&lt;AreaRule&gt; get_area_rules(campaign_id)

Get all area rules for a campaign

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

api_instance = Vouchery::AreaRulesApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get all area rules for a campaign
  result = api_instance.get_area_rules(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling AreaRulesApi->get_area_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**Array&lt;AreaRule&gt;**](AreaRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_area_rule**
> AreaRule update_area_rule(id, opts)

Update an area rule rule

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

api_instance = Vouchery::AreaRulesApi.new
id = 56 # Integer | Rule ID
opts = {
  area_rule: Vouchery::AreaRule.new # AreaRule | 
}

begin
  #Update an area rule rule
  result = api_instance.update_area_rule(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling AreaRulesApi->update_area_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 
 **area_rule** | [**AreaRule**](AreaRule.md)|  | [optional] 

### Return type

[**AreaRule**](AreaRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



