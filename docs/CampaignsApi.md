# Vouchery::CampaignsApi

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_campaign**](CampaignsApi.md#create_campaign) | **POST** /campaigns | Create a campaign
[**delete_campaign**](CampaignsApi.md#delete_campaign) | **DELETE** /campaigns/{id} | Delete a campaign
[**find_sub_campaigns**](CampaignsApi.md#find_sub_campaigns) | **GET** /campaigns/sub | Get sub campaigns by params
[**get_campaign**](CampaignsApi.md#get_campaign) | **GET** /campaigns/{id} | Get a campaign
[**get_campaigns**](CampaignsApi.md#get_campaigns) | **GET** /campaigns | Get main campaigns with children by params
[**get_main_campaign**](CampaignsApi.md#get_main_campaign) | **GET** /main_campaigns/{id} | Get a main campaign
[**get_main_campaigns**](CampaignsApi.md#get_main_campaigns) | **GET** /main_campaigns | Get main campaigns with children by params
[**update_campaign**](CampaignsApi.md#update_campaign) | **PATCH** /campaigns/{id} | Update a campaign



## create_campaign

> Campaign create_campaign(opts)

Create a campaign

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_campaign

> delete_campaign(id)

Delete a campaign

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## find_sub_campaigns

> Array&lt;Campaign&gt; find_sub_campaigns(opts)

Get sub campaigns by params

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::CampaignsApi.new
opts = {
  name_cont: 'name_cont_example', # String | Name contains
  status_eq: 'status_eq_example', # String | Status
  template_eq: 'template_eq_example', # String | Template (type) of sub campaign
  triggers_on_eq: 'triggers_on_eq_example', # String | Triggers On
  trigger_name_cont: 'trigger_name_cont_example' # String | Trigger Name contains
}

begin
  #Get sub campaigns by params
  result = api_instance.find_sub_campaigns(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CampaignsApi->find_sub_campaigns: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name_cont** | **String**| Name contains | [optional] 
 **status_eq** | **String**| Status | [optional] 
 **template_eq** | **String**| Template (type) of sub campaign | [optional] 
 **triggers_on_eq** | **String**| Triggers On | [optional] 
 **trigger_name_cont** | **String**| Trigger Name contains | [optional] 

### Return type

[**Array&lt;Campaign&gt;**](Campaign.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign

> Campaign get_campaign(id)

Get a campaign

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaigns

> Array&lt;Campaign&gt; get_campaigns(opts)

Get main campaigns with children by params

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::CampaignsApi.new
opts = {
  name_cont: 'name_cont_example', # String | Name contains
  team_eq: 'team_eq_example', # String | Team
  status_eq: 'status_eq_example', # String | Status
  template_eq: 'template_eq_example' # String | Template (promotion type) of main campaign
}

begin
  #Get main campaigns with children by params
  result = api_instance.get_campaigns(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaigns: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name_cont** | **String**| Name contains | [optional] 
 **team_eq** | **String**| Team | [optional] 
 **status_eq** | **String**| Status | [optional] 
 **template_eq** | **String**| Template (promotion type) of main campaign | [optional] 

### Return type

[**Array&lt;Campaign&gt;**](Campaign.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_main_campaign

> MainCampaign get_main_campaign(id)

Get a main campaign

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::CampaignsApi.new
id = 56 # Integer | Campaign ID

begin
  #Get a main campaign
  result = api_instance.get_main_campaign(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CampaignsApi->get_main_campaign: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Campaign ID | 

### Return type

[**MainCampaign**](MainCampaign.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_main_campaigns

> Array&lt;MainCampaign&gt; get_main_campaigns(opts)

Get main campaigns with children by params

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::CampaignsApi.new
opts = {
  name_cont: 'name_cont_example', # String | Name contains
  team_eq: 'team_eq_example', # String | Teaml
  status_eq: 'status_eq_example', # String | Status
  template_eq: 'template_eq_example' # String | Template (promotion type) of main campaign
}

begin
  #Get main campaigns with children by params
  result = api_instance.get_main_campaigns(opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling CampaignsApi->get_main_campaigns: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name_cont** | **String**| Name contains | [optional] 
 **team_eq** | **String**| Teaml | [optional] 
 **status_eq** | **String**| Status | [optional] 
 **template_eq** | **String**| Template (promotion type) of main campaign | [optional] 

### Return type

[**Array&lt;MainCampaign&gt;**](MainCampaign.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_campaign

> Campaign update_campaign(id, opts)

Update a campaign

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
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

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

