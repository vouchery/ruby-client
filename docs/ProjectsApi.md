# Vouchery::ProjectsApi

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**update_project**](ProjectsApi.md#update_project) | **PATCH** /project | Update project settings



## update_project

> Project update_project(opts)

Update project settings

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::ProjectsApi.new
opts = {
  project: Vouchery::Project.new # Project | 
}

begin
  #Update project settings
  result = api_instance.update_project(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling ProjectsApi->update_project: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | [**Project**](Project.md)|  | [optional] 

### Return type

[**Project**](Project.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

