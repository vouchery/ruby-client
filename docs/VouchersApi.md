# Vouchery::VouchersApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batch_generate_vouchers**](VouchersApi.md#batch_generate_vouchers) | **POST** /campaigns/{id}/vouchers/batch | Batch create vouchers
[**create_voucher**](VouchersApi.md#create_voucher) | **POST** /campaigns/{campaign_id}/vouchers | Create a voucher
[**delete_voucher**](VouchersApi.md#delete_voucher) | **DELETE** /vouchers/{id} | Delete a voucher
[**find_voucher**](VouchersApi.md#find_voucher) | **GET** /vouchers/find | Find a voucher by campaign metadata
[**get_voucher**](VouchersApi.md#get_voucher) | **GET** /vouchers/{id} | Get a voucher
[**get_vouchers**](VouchersApi.md#get_vouchers) | **GET** /campaigns/{campaign_id}/vouchers | Get all vouchers for a campaign
[**import_vouchers**](VouchersApi.md#import_vouchers) | **POST** /campaigns/{id}/vouchers/import | Import your own vouchers
[**update_voucher**](VouchersApi.md#update_voucher) | **PATCH** /vouchers/{id} | Update a voucher


# **batch_generate_vouchers**
> Array&lt;Voucher&gt; batch_generate_vouchers(id, opts)

Batch create vouchers

 <p>Generate a batch of unique vouchers. Each voucher will be created using <code>{prefix}-{random code}</code> format where code will be a random string of requested type and length. <strong>A prefix needs to be unique within a project.</strong></p> <p> Following code types are supported: <ul> <li>digits</li> <li>letters</li> <li>mixed (digits and letters)</li> </ul> </p> <p>Allowed characters for each code type have been filtered to avoid typing mistakes. Maximum number of codes possible to generate in one batch request is 500 000.</p>

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

api_instance = Vouchery::VouchersApi.new
id = 56 # Integer | Campaign ID
opts = {
  batch: Vouchery::Batch.new # Batch | 
}

begin
  #Batch create vouchers
  result = api_instance.batch_generate_vouchers(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling VouchersApi->batch_generate_vouchers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Campaign ID | 
 **batch** | [**Batch**](Batch.md)|  | [optional] 

### Return type

[**Array&lt;Voucher&gt;**](Voucher.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_voucher**
> Voucher create_voucher(campaign_id, opts)

Create a voucher

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

api_instance = Vouchery::VouchersApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  voucher: Vouchery::Voucher.new # Voucher | 
}

begin
  #Create a voucher
  result = api_instance.create_voucher(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling VouchersApi->create_voucher: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **voucher** | [**Voucher**](Voucher.md)|  | [optional] 

### Return type

[**Voucher**](Voucher.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_voucher**
> delete_voucher(id)

Delete a voucher

Delete a single voucher. Vouchers with at least one confirmed redemption can not be deleted.

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

api_instance = Vouchery::VouchersApi.new
id = 56 # Integer | Voucher ID

begin
  #Delete a voucher
  api_instance.delete_voucher(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling VouchersApi->delete_voucher: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Voucher ID | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **find_voucher**
> Voucher find_voucher(opts)

Find a voucher by campaign metadata

<p>Find voucher by campaign metadata.</p> <p>   Optionally assign found voucher to a customer by passing customer_identifier param.   All vouchers for a customer can be fetched at <a href=\"#get_customers-identifier-vouchers\">/customers/{id}/vouchers</a>. </p> <p>If no voucher is available this endpoint will return an empty response and HTTP code <code>204 No content</code></p> 

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

api_instance = Vouchery::VouchersApi.new
opts = {
  medium: ['medium_example'], # Array<String> | 
  customer_identifier: 'customer_identifier_example' # String | \"Assign found voucher to a customer with this identifier. Will create customer if not present. Optional.\"
}

begin
  #Find a voucher by campaign metadata
  result = api_instance.find_voucher(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling VouchersApi->find_voucher: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **medium** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **customer_identifier** | **String**| \&quot;Assign found voucher to a customer with this identifier. Will create customer if not present. Optional.\&quot; | [optional] 

### Return type

[**Voucher**](Voucher.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_voucher**
> Voucher get_voucher(id)

Get a voucher

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

api_instance = Vouchery::VouchersApi.new
id = 56 # Integer | Voucher ID

begin
  #Get a voucher
  result = api_instance.get_voucher(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling VouchersApi->get_voucher: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Voucher ID | 

### Return type

[**Voucher**](Voucher.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_vouchers**
> Array&lt;Voucher&gt; get_vouchers(campaign_id)

Get all vouchers for a campaign

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

api_instance = Vouchery::VouchersApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get all vouchers for a campaign
  result = api_instance.get_vouchers(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling VouchersApi->get_vouchers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**Array&lt;Voucher&gt;**](Voucher.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **import_vouchers**
> InlineResponse200 import_vouchers(id, opts)

Import your own vouchers

 <p>Generate a batch of unique vouchers. Each voucher will be created using <code>{prefix}-{random code}</code> format where code will be a random string of requested type and length. <strong>A prefix needs to be unique within a project.</strong></p> <p> Following code types are supported: <ul> <li>digits</li> <li>letters</li> <li>mixed (digits and letters)</li> </ul> </p> <p>Allowed characters for each code type have been filtered to avoid typing mistakes. Maximum number of codes possible to generate in one batch request is 500 000.</p>

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

api_instance = Vouchery::VouchersApi.new
id = 56 # Integer | Campaign ID
opts = {
  body: File.new('/path/to/file') # File | 
}

begin
  #Import your own vouchers
  result = api_instance.import_vouchers(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling VouchersApi->import_vouchers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Campaign ID | 
 **body** | **File**|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: text/csv
 - **Accept**: application/json



# **update_voucher**
> Voucher update_voucher(id, opts)

Update a voucher

Vouchers with at least one confirmed redemption can not be changed.

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

api_instance = Vouchery::VouchersApi.new
id = 56 # Integer | Voucher ID
opts = {
  voucher: Vouchery::Voucher.new # Voucher | 
}

begin
  #Update a voucher
  result = api_instance.update_voucher(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling VouchersApi->update_voucher: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Voucher ID | 
 **voucher** | [**Voucher**](Voucher.md)|  | [optional] 

### Return type

[**Voucher**](Voucher.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



