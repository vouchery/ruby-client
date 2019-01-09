# Vouchery::CampaignsApi

All URIs are relative to *https://preview.vouchery.io/api/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_campaign**](CampaignsApi.md#create_campaign) | **POST** /campaigns | Create a campaign
[**delete_campaign**](CampaignsApi.md#delete_campaign) | **DELETE** /campaigns/{id} | Delete a campaign
[**get_campaign**](CampaignsApi.md#get_campaign) | **GET** /campaigns/{id} | Get a campaign
[**get_campaigns**](CampaignsApi.md#get_campaigns) | **GET** /campaigns | Get all campaigns
[**update_campaign**](CampaignsApi.md#update_campaign) | **PATCH** /campaigns/{id} | Update a campaign


# **create_campaign**
> Campaign create_campaign(opts)

Create a campaign

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

api_instance = Vouchery::CampaignsApi.new
opts = {
  campaign: Vouchery::Campaign.new # Campaign | 
}

begin
  #Create a campaign
  result = api_instance.create_campaign(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CampaignsApi->create_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**Campaign**](Campaign.md)|  | [optional] 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_campaign**
> delete_campaign(id)

Delete a campaign

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

api_instance = Vouchery::CampaignsApi.new
id = 56 # Integer | Campaign ID

begin
  #Delete a campaign
  api_instance.delete_campaign(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling CampaignsApi->delete_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Campaign ID | 

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_campaign**
> Campaign get_campaign(id)

Get a campaign

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

api_instance = Vouchery::CampaignsApi.new
id = 56 # Integer | Campaign ID

begin
  #Get a campaign
  result = api_instance.get_campaign(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Campaign ID | 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_campaigns**
> Array&lt;Campaign&gt; get_campaigns

Get all campaigns

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

api_instance = Vouchery::CampaignsApi.new

begin
  #Get all campaigns
  result = api_instance.get_campaigns
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaigns: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Campaign&gt;**](Campaign.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_campaign**
> Campaign update_campaign(id, opts)

Update a campaign

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

api_instance = Vouchery::CampaignsApi.new
id = 56 # Integer | Campaign ID
opts = {
  campaign: Vouchery::Campaign.new # Campaign | 
}

begin
  #Update a campaign
  result = api_instance.update_campaign(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CampaignsApi->update_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Campaign ID | 
 **campaign** | [**Campaign**](Campaign.md)|  | [optional] 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



