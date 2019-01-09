# Vouchery::BudgetRulesApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_budget_rule**](BudgetRulesApi.md#create_budget_rule) | **POST** /campaigns/{campaign_id}/budget_rules | Create a budget rule
[**delete_budget_rule**](BudgetRulesApi.md#delete_budget_rule) | **DELETE** /budget_rules/{id} | Delete a rule
[**get_budget_rule**](BudgetRulesApi.md#get_budget_rule) | **GET** /budget_rules/{id} | Get a budget rule
[**get_budget_rules**](BudgetRulesApi.md#get_budget_rules) | **GET** /campaigns/{campaign_id}/budget_rules | Get all budget rules for a campaign
[**update_budget_rule**](BudgetRulesApi.md#update_budget_rule) | **PATCH** /budget_rules/{id} | Update a budget rule


# **create_budget_rule**
> BudgetRule create_budget_rule(campaign_id, opts)

Create a budget rule

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

api_instance = Vouchery::BudgetRulesApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  budget_rule: Vouchery::BudgetRule.new # BudgetRule | 
}

begin
  #Create a budget rule
  result = api_instance.create_budget_rule(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling BudgetRulesApi->create_budget_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **budget_rule** | [**BudgetRule**](BudgetRule.md)|  | [optional] 

### Return type

[**BudgetRule**](BudgetRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_budget_rule**
> delete_budget_rule(id)

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

api_instance = Vouchery::BudgetRulesApi.new
id = 56 # Integer | Rule ID

begin
  #Delete a rule
  api_instance.delete_budget_rule(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling BudgetRulesApi->delete_budget_rule: #{e}"
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



# **get_budget_rule**
> BudgetRule get_budget_rule(id)

Get a budget rule

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

api_instance = Vouchery::BudgetRulesApi.new
id = 56 # Integer | Rule ID

begin
  #Get a budget rule
  result = api_instance.get_budget_rule(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling BudgetRulesApi->get_budget_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 

### Return type

[**BudgetRule**](BudgetRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_budget_rules**
> Array&lt;BudgetRule&gt; get_budget_rules(campaign_id)

Get all budget rules for a campaign

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

api_instance = Vouchery::BudgetRulesApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get all budget rules for a campaign
  result = api_instance.get_budget_rules(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling BudgetRulesApi->get_budget_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**Array&lt;BudgetRule&gt;**](BudgetRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_budget_rule**
> BudgetRule update_budget_rule(id, opts)

Update a budget rule

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

api_instance = Vouchery::BudgetRulesApi.new
id = 56 # Integer | Rule ID
opts = {
  budget_rule: Vouchery::BudgetRule.new # BudgetRule | 
}

begin
  #Update a budget rule
  result = api_instance.update_budget_rule(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling BudgetRulesApi->update_budget_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Rule ID | 
 **budget_rule** | [**BudgetRule**](BudgetRule.md)|  | [optional] 

### Return type

[**BudgetRule**](BudgetRule.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



