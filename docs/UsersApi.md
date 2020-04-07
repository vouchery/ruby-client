# Vouchery::UsersApi

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_me**](UsersApi.md#get_me) | **GET** /me | Get information about current user and project
[**get_user**](UsersApi.md#get_user) | **GET** /users/{email} | Get a user
[**get_users**](UsersApi.md#get_users) | **GET** /users | Get all users within a project
[**update_user**](UsersApi.md#update_user) | **PATCH** /users/{email} | Update a user



## get_me

> InlineResponse2001 get_me

Get information about current user and project

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::UsersApi.new

begin
  #Get information about current user and project
  result = api_instance.get_me
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling UsersApi->get_me: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> User get_user(email)

Get a user

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::UsersApi.new
email = 'email_example' # String | User email

begin
  #Get a user
  result = api_instance.get_user(email)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| User email | 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> Array&lt;User&gt; get_users(opts)

Get all users within a project

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::UsersApi.new
opts = {
  page: 56, # Integer | Result page (indexed from 1)
  per_page: 56 # Integer | Results per page
}

begin
  #Get all users within a project
  result = api_instance.get_users(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling UsersApi->get_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Result page (indexed from 1) | [optional] 
 **per_page** | **Integer**| Results per page | [optional] 

### Return type

[**Array&lt;User&gt;**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> User update_user(email, opts)

Update a user

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::UsersApi.new
email = 'email_example' # String | User email
opts = {
  user: Vouchery::User.new # User | 
}

begin
  #Update a user
  result = api_instance.update_user(email, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| User email | 
 **user** | [**User**](User.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

