# Vouchery::RedemptionsApi

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirm_redemption**](RedemptionsApi.md#confirm_redemption) | **PATCH** /vouchers/{code}/redemptions | Confirm a redemption
[**create_redemption**](RedemptionsApi.md#create_redemption) | **POST** /vouchers/{code}/redemptions | Create a redemption
[**delete_redemption**](RedemptionsApi.md#delete_redemption) | **DELETE** /vouchers/{code}/redemptions | Delete a redemption
[**get_redemption**](RedemptionsApi.md#get_redemption) | **GET** /vouchers/{code}/redemptions | Get a redemption
[**get_redemptions**](RedemptionsApi.md#get_redemptions) | **GET** /campaigns/{campaign_id}/redemptions | Get all redemptions for a campaign



## confirm_redemption

> Redemption confirm_redemption(code, transaction_id)

Confirm a redemption

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::RedemptionsApi.new
code = 'code_example' # String | Voucher code
transaction_id = 'transaction_id_example' # String | ID which identifies the transaction in customer system, e.g. order number, invoice number

begin
  #Confirm a redemption
  result = api_instance.confirm_redemption(code, transaction_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RedemptionsApi->confirm_redemption: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Voucher code | 
 **transaction_id** | **String**| ID which identifies the transaction in customer system, e.g. order number, invoice number | 

### Return type

[**Redemption**](Redemption.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_redemption

> Redemption create_redemption(code, opts)

Create a redemption

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::RedemptionsApi.new
code = 'code_example' # String | Voucher code
opts = {
  redemption: Vouchery::Redemption.new # Redemption | 
}

begin
  #Create a redemption
  result = api_instance.create_redemption(code, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RedemptionsApi->create_redemption: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Voucher code | 
 **redemption** | [**Redemption**](Redemption.md)|  | [optional] 

### Return type

[**Redemption**](Redemption.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_redemption

> delete_redemption(code, transaction_id)

Delete a redemption

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::RedemptionsApi.new
code = 'code_example' # String | Voucher code
transaction_id = 'transaction_id_example' # String | ID which identifies the transaction in customer system, e.g. order number, invoice number

begin
  #Delete a redemption
  api_instance.delete_redemption(code, transaction_id)
rescue Vouchery::ApiError => e
  puts "Exception when calling RedemptionsApi->delete_redemption: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Voucher code | 
 **transaction_id** | **String**| ID which identifies the transaction in customer system, e.g. order number, invoice number | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_redemption

> Redemption get_redemption(code, transaction_id)

Get a redemption

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::RedemptionsApi.new
code = 'code_example' # String | Voucher code
transaction_id = 'transaction_id_example' # String | ID which identifies the transaction in customer system, e.g. order number, invoice number

begin
  #Get a redemption
  result = api_instance.get_redemption(code, transaction_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RedemptionsApi->get_redemption: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Voucher code | 
 **transaction_id** | **String**| ID which identifies the transaction in customer system, e.g. order number, invoice number | 

### Return type

[**Redemption**](Redemption.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_redemptions

> Array&lt;Redemption&gt; get_redemptions(campaign_id)

Get all redemptions for a campaign

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::RedemptionsApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get all redemptions for a campaign
  result = api_instance.get_redemptions(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RedemptionsApi->get_redemptions: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**Array&lt;Redemption&gt;**](Redemption.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

