# Vouchery::AreasApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_area**](AreasApi.md#create_area) | **POST** /areas | Create an area
[**delete_area**](AreasApi.md#delete_area) | **DELETE** /areas/{id} | Delete an area
[**get_area**](AreasApi.md#get_area) | **GET** /areas/{id} | Get an area
[**get_areas**](AreasApi.md#get_areas) | **GET** /areas | Get all areas
[**update_area**](AreasApi.md#update_area) | **PATCH** /areas/{id} | Update an area


# **create_area**
> Area create_area(opts)

Create an area

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

api_instance = Vouchery::AreasApi.new
opts = {
  area: Vouchery::Area.new # Area | 
}

begin
  #Create an area
  result = api_instance.create_area(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling AreasApi->create_area: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **area** | [**Area**](Area.md)|  | [optional] 

### Return type

[**Area**](Area.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_area**
> delete_area(id)

Delete an area

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

api_instance = Vouchery::AreasApi.new
id = 56 # Integer | Area ID

begin
  #Delete an area
  api_instance.delete_area(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling AreasApi->delete_area: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Area ID | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_area**
> Area get_area(id)

Get an area

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

api_instance = Vouchery::AreasApi.new
id = 56 # Integer | Area ID

begin
  #Get an area
  result = api_instance.get_area(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling AreasApi->get_area: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Area ID | 

### Return type

[**Area**](Area.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_areas**
> Array&lt;Area&gt; get_areas

Get all areas

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

api_instance = Vouchery::AreasApi.new

begin
  #Get all areas
  result = api_instance.get_areas
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling AreasApi->get_areas: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Area&gt;**](Area.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_area**
> Area update_area(id, opts)

Update an area

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

api_instance = Vouchery::AreasApi.new
id = 56 # Integer | Area ID
opts = {
  area: Vouchery::Area.new # Area | 
}

begin
  #Update an area
  result = api_instance.update_area(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling AreasApi->update_area: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Area ID | 
 **area** | [**Area**](Area.md)|  | [optional] 

### Return type

[**Area**](Area.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



