# Vouchery::CategoriesApi

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_category**](CategoriesApi.md#create_category) | **POST** /categories | Create a category
[**delete_category**](CategoriesApi.md#delete_category) | **DELETE** /categories/{id} | Delete a category
[**get_categories**](CategoriesApi.md#get_categories) | **GET** /categories | Get all categories for a campaign
[**get_category**](CategoriesApi.md#get_category) | **GET** /categories/{id} | Get a category
[**update_category**](CategoriesApi.md#update_category) | **PATCH** /categories/{id} | Update a category



## create_category

> Category create_category(opts)

Create a category

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

api_instance = Vouchery::CategoriesApi.new
opts = {
  category: Vouchery::Category.new # Category | 
}

begin
  #Create a category
  result = api_instance.create_category(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CategoriesApi->create_category: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**Category**](Category.md)|  | [optional] 

### Return type

[**Category**](Category.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_category

> delete_category(id)

Delete a category

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

api_instance = Vouchery::CategoriesApi.new
id = 56 # Integer | Category ID

begin
  #Delete a category
  api_instance.delete_category(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling CategoriesApi->delete_category: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Category ID | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_categories

> Array&lt;Category&gt; get_categories

Get all categories for a campaign

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

api_instance = Vouchery::CategoriesApi.new

begin
  #Get all categories for a campaign
  result = api_instance.get_categories
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CategoriesApi->get_categories: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Category&gt;**](Category.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_category

> Category get_category(id)

Get a category

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

api_instance = Vouchery::CategoriesApi.new
id = 56 # Integer | Category ID

begin
  #Get a category
  result = api_instance.get_category(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CategoriesApi->get_category: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Category ID | 

### Return type

[**Category**](Category.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_category

> Category update_category(id, opts)

Update a category

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

api_instance = Vouchery::CategoriesApi.new
id = 56 # Integer | Category ID
opts = {
  category: Vouchery::Category.new # Category | 
}

begin
  #Update a category
  result = api_instance.update_category(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CategoriesApi->update_category: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Category ID | 
 **category** | [**Category**](Category.md)|  | [optional] 

### Return type

[**Category**](Category.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

