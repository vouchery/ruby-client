# Vouchery::CustomersApi

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assign_vouchers_to_customer**](CustomersApi.md#assign_vouchers_to_customer) | **PATCH** /customers/{identifier}/vouchers | Assign vouchers to a customer
[**create_customer**](CustomersApi.md#create_customer) | **POST** /customers | Create a customer
[**delete_customer**](CustomersApi.md#delete_customer) | **DELETE** /customers/{identifier} | Delete a customer
[**get_customer**](CustomersApi.md#get_customer) | **GET** /customers/{identifier} | Get a customer
[**get_customer_redemptions**](CustomersApi.md#get_customer_redemptions) | **GET** /customers/{identifier}/redemptions | Get redemptions performed by a customer
[**get_customer_vouchers**](CustomersApi.md#get_customer_vouchers) | **GET** /customers/{identifier}/vouchers | Get vouchers assigned to a customer
[**get_customers**](CustomersApi.md#get_customers) | **GET** /customers | Get all customers
[**import_customers**](CustomersApi.md#import_customers) | **POST** /customers/import | Import your own customers
[**remove_vouchers_from_customer**](CustomersApi.md#remove_vouchers_from_customer) | **DELETE** /customers/{identifier}/vouchers | Remove (unassign) vouchers from a customer
[**update_customer**](CustomersApi.md#update_customer) | **PATCH** /customers/{identifier} | Update a customer



## assign_vouchers_to_customer

> Customer assign_vouchers_to_customer(identifier, opts)

Assign vouchers to a customer

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

api_instance = Vouchery::CustomersApi.new
identifier = 'identifier_example' # String | Customer identifier
opts = {
  inline_object1: Vouchery::InlineObject1.new # InlineObject1 | 
}

begin
  #Assign vouchers to a customer
  result = api_instance.assign_vouchers_to_customer(identifier, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CustomersApi->assign_vouchers_to_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Customer identifier | 
 **inline_object1** | [**InlineObject1**](InlineObject1.md)|  | [optional] 

### Return type

[**Customer**](Customer.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_customer

> Customer create_customer(opts)

Create a customer

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

api_instance = Vouchery::CustomersApi.new
opts = {
  customer: Vouchery::Customer.new # Customer | 
}

begin
  #Create a customer
  result = api_instance.create_customer(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CustomersApi->create_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer** | [**Customer**](Customer.md)|  | [optional] 

### Return type

[**Customer**](Customer.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_customer

> delete_customer(identifier)

Delete a customer

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

api_instance = Vouchery::CustomersApi.new
identifier = 'identifier_example' # String | Customer identifier

begin
  #Delete a customer
  api_instance.delete_customer(identifier)
rescue Vouchery::ApiError => e
  puts "Exception when calling CustomersApi->delete_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Customer identifier | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_customer

> Customer get_customer(identifier)

Get a customer

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

api_instance = Vouchery::CustomersApi.new
identifier = 'identifier_example' # String | Customer identifier

begin
  #Get a customer
  result = api_instance.get_customer(identifier)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CustomersApi->get_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Customer identifier | 

### Return type

[**Customer**](Customer.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_redemptions

> Array&lt;Redemption&gt; get_customer_redemptions(identifier)

Get redemptions performed by a customer

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

api_instance = Vouchery::CustomersApi.new
identifier = 'identifier_example' # String | Customer identifier

begin
  #Get redemptions performed by a customer
  result = api_instance.get_customer_redemptions(identifier)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CustomersApi->get_customer_redemptions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Customer identifier | 

### Return type

[**Array&lt;Redemption&gt;**](Redemption.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_vouchers

> Array&lt;Voucher&gt; get_customer_vouchers(identifier)

Get vouchers assigned to a customer

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

api_instance = Vouchery::CustomersApi.new
identifier = 'identifier_example' # String | Customer identifier

begin
  #Get vouchers assigned to a customer
  result = api_instance.get_customer_vouchers(identifier)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CustomersApi->get_customer_vouchers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Customer identifier | 

### Return type

[**Array&lt;Voucher&gt;**](Voucher.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customers

> Array&lt;Customer&gt; get_customers

Get all customers

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

api_instance = Vouchery::CustomersApi.new

begin
  #Get all customers
  result = api_instance.get_customers
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CustomersApi->get_customers: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Customer&gt;**](Customer.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_customers

> InlineResponse200 import_customers(opts)

Import your own customers

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

api_instance = Vouchery::CustomersApi.new
opts = {
  file: File.new('/path/to/file') # File | 
}

begin
  #Import your own customers
  result = api_instance.import_customers(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CustomersApi->import_customers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## remove_vouchers_from_customer

> Customer remove_vouchers_from_customer(identifier, opts)

Remove (unassign) vouchers from a customer

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

api_instance = Vouchery::CustomersApi.new
identifier = 'identifier_example' # String | Customer identifier
opts = {
  inline_object: Vouchery::InlineObject.new # InlineObject | 
}

begin
  #Remove (unassign) vouchers from a customer
  result = api_instance.remove_vouchers_from_customer(identifier, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CustomersApi->remove_vouchers_from_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Customer identifier | 
 **inline_object** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**Customer**](Customer.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_customer

> Customer update_customer(identifier, opts)

Update a customer

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

api_instance = Vouchery::CustomersApi.new
identifier = 'identifier_example' # String | Customer identifier
opts = {
  customer: Vouchery::Customer.new # Customer | 
}

begin
  #Update a customer
  result = api_instance.update_customer(identifier, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CustomersApi->update_customer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Customer identifier | 
 **customer** | [**Customer**](Customer.md)|  | [optional] 

### Return type

[**Customer**](Customer.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

