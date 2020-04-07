# Vouchery::RewardsApi

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_reward**](RewardsApi.md#create_reward) | **POST** /campaigns/{campaign_id}/rewards | Create a reward
[**delete_reward**](RewardsApi.md#delete_reward) | **DELETE** /rewards/{id} | Delete a reward
[**get_reward**](RewardsApi.md#get_reward) | **GET** /rewards/{id} | Get a reward
[**get_rewards**](RewardsApi.md#get_rewards) | **GET** /campaigns/{campaign_id}/rewards | Get all rewards for a campaign
[**update_reward**](RewardsApi.md#update_reward) | **PATCH** /rewards/{id} | Update a reward



## create_reward

> Reward create_reward(campaign_id, opts)

Create a reward

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::RewardsApi.new
campaign_id = 56 # Integer | Campaign ID
opts = {
  reward: Vouchery::Reward.new # Reward | 
}

begin
  #Create a reward
  result = api_instance.create_reward(campaign_id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RewardsApi->create_reward: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 
 **reward** | [**Reward**](Reward.md)|  | [optional] 

### Return type

[**Reward**](Reward.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_reward

> delete_reward(id)

Delete a reward

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::RewardsApi.new
id = 56 # Integer | Reward ID

begin
  #Delete a reward
  api_instance.delete_reward(id)
rescue Vouchery::ApiError => e
  puts "Exception when calling RewardsApi->delete_reward: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Reward ID | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reward

> Reward get_reward(id)

Get a reward

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::RewardsApi.new
id = 56 # Integer | Reward ID

begin
  #Get a reward
  result = api_instance.get_reward(id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RewardsApi->get_reward: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Reward ID | 

### Return type

[**Reward**](Reward.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rewards

> Array&lt;Reward&gt; get_rewards(campaign_id)

Get all rewards for a campaign

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::RewardsApi.new
campaign_id = 56 # Integer | Campaign ID

begin
  #Get all rewards for a campaign
  result = api_instance.get_rewards(campaign_id)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RewardsApi->get_rewards: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Campaign ID | 

### Return type

[**Array&lt;Reward&gt;**](Reward.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_reward

> Reward update_reward(id, opts)

Update a reward

### Example

```ruby
# load the gem
require 'vouchery_client'
# setup authorization
Vouchery.configure do |config|
  # Configure Bearer authorization: Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vouchery::RewardsApi.new
id = 56 # Integer | Reward ID
opts = {
  reward: Vouchery::Reward.new # Reward | 
}

begin
  #Update a reward
  result = api_instance.update_reward(id, opts)
  p result
rescue Vouchery::ApiError => e
  puts "Exception when calling RewardsApi->update_reward: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Reward ID | 
 **reward** | [**Reward**](Reward.md)|  | [optional] 

### Return type

[**Reward**](Reward.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

