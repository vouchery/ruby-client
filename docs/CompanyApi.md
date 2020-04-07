# Vouchery::CompanyApi

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**update_company**](CompanyApi.md#update_company) | **PATCH** /company | Update company details



## update_company

> Company update_company(opts)

Update company details

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::CompanyApi.new
opts = {
  company: Vouchery::Company.new # Company | 
}

begin
  #Update company details
  result = api_instance.update_company(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CompanyApi->update_company: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company** | [**Company**](Company.md)|  | [optional] 

### Return type

[**Company**](Company.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

