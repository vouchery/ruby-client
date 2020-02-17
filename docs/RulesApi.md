# Vouchery::RulesApi

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_rule**](RulesApi.md#create_rule) | **POST** /campaigns/{campaign_id}/rules | Create a rule
[**delete_rule**](RulesApi.md#delete_rule) | **DELETE** /rules/{id} | Delete a rule
[**get_rule**](RulesApi.md#get_rule) | **GET** /rules/{id} | Get a rule
[**get_rules**](RulesApi.md#get_rules) | **GET** /campaigns/{campaign_id}/rules | Get all rules for a campaign
[**update_rule**](RulesApi.md#update_rule) | **PATCH** /rules/{id} | Update a rule



## create_rule

> Rule create_rule(campaign_id, opts)

Create a rule

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

api_instance = Vouchery::RulesApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  rule: Vouchery::Rule.new # Rule | 
}

begin
  #Create a rule
  result = api_instance.create_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RulesApi->create_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **rule** | [**Rule**](Rule.md)|  | [optional] 

### Return type

[**Rule**](Rule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_rule

> delete_rule(id)

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

api_instance = Vouchery::RulesApi.new
id = 56 # Integer | Rule ID

begin
  #Delete a rule
  api_instance.delete_rule(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling RulesApi->delete_rule: #{e}"
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


## get_rule

> Rule get_rule(id)

Get a rule

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

api_instance = Vouchery::RulesApi.new
id = 56 # Integer | Rule ID

begin
  #Get a rule
  result = api_instance.get_rule(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RulesApi->get_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 

### Return type

[**Rule**](Rule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rules

> Array&lt;Rule&gt; get_rules(campaign_id)

Get all rules for a campaign

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

api_instance = Vouchery::RulesApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get all rules for a campaign
  result = api_instance.get_rules(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RulesApi->get_rules: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**Array&lt;Rule&gt;**](Rule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rule

> Rule update_rule(id, opts)

Update a rule

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

api_instance = Vouchery::RulesApi.new
id = 56 # Integer | Rule ID
opts = {
  rule: Vouchery::Rule.new # Rule | 
}

begin
  #Update a rule
  result = api_instance.update_rule(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RulesApi->update_rule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 
 **rule** | [**Rule**](Rule.md)|  | [optional] 

### Return type

[**Rule**](Rule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

