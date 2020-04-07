# vouchery_client

Vouchery - the Ruby gem for the Vouchery API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0
- Package version: 2.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://vouchery.io](https://vouchery.io)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build vouchery_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./vouchery_client-2.0.0.gem
```

(for development, run `gem install --dev ./vouchery_client-2.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'vouchery_client', '~> 2.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'vouchery_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'vouchery_client'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *https://preview.vouchery.io/api/v2.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Vouchery::CampaignsApi* | [**create_campaign**](docs/CampaignsApi.md#create_campaign) | **POST** /campaigns | Create a campaign
*Vouchery::CampaignsApi* | [**delete_campaign**](docs/CampaignsApi.md#delete_campaign) | **DELETE** /campaigns/{id} | Delete a campaign
*Vouchery::CampaignsApi* | [**find_sub_campaigns**](docs/CampaignsApi.md#find_sub_campaigns) | **GET** /campaigns/sub | Get sub campaigns by params
*Vouchery::CampaignsApi* | [**get_campaign**](docs/CampaignsApi.md#get_campaign) | **GET** /campaigns/{id} | Get a campaign
*Vouchery::CampaignsApi* | [**get_campaigns**](docs/CampaignsApi.md#get_campaigns) | **GET** /campaigns | Get main campaigns with children by params
*Vouchery::CampaignsApi* | [**get_main_campaign**](docs/CampaignsApi.md#get_main_campaign) | **GET** /main_campaigns/{id} | Get a main campaign
*Vouchery::CampaignsApi* | [**get_main_campaigns**](docs/CampaignsApi.md#get_main_campaigns) | **GET** /main_campaigns | Get main campaigns with children by params
*Vouchery::CampaignsApi* | [**update_campaign**](docs/CampaignsApi.md#update_campaign) | **PATCH** /campaigns/{id} | Update a campaign
*Vouchery::CategoriesApi* | [**create_category**](docs/CategoriesApi.md#create_category) | **POST** /categories | Create a category
*Vouchery::CategoriesApi* | [**delete_category**](docs/CategoriesApi.md#delete_category) | **DELETE** /categories/{id} | Delete a category
*Vouchery::CategoriesApi* | [**get_categories**](docs/CategoriesApi.md#get_categories) | **GET** /categories | Get all categories for a campaign
*Vouchery::CategoriesApi* | [**get_category**](docs/CategoriesApi.md#get_category) | **GET** /categories/{id} | Get a category
*Vouchery::CategoriesApi* | [**update_category**](docs/CategoriesApi.md#update_category) | **PATCH** /categories/{id} | Update a category
*Vouchery::CompanyApi* | [**update_company**](docs/CompanyApi.md#update_company) | **PATCH** /company | Update company details
*Vouchery::CustomersApi* | [**assign_vouchers_to_customer**](docs/CustomersApi.md#assign_vouchers_to_customer) | **PATCH** /customers/{identifier}/vouchers | Assign vouchers to a customer
*Vouchery::CustomersApi* | [**create_customer**](docs/CustomersApi.md#create_customer) | **POST** /customers | Create a customer
*Vouchery::CustomersApi* | [**delete_customer**](docs/CustomersApi.md#delete_customer) | **DELETE** /customers/{identifier} | Delete a customer
*Vouchery::CustomersApi* | [**get_customer**](docs/CustomersApi.md#get_customer) | **GET** /customers/{identifier} | Get a customer
*Vouchery::CustomersApi* | [**get_customer_redemptions**](docs/CustomersApi.md#get_customer_redemptions) | **GET** /customers/{identifier}/redemptions | Get redemptions performed by a customer
*Vouchery::CustomersApi* | [**get_customer_vouchers**](docs/CustomersApi.md#get_customer_vouchers) | **GET** /customers/{identifier}/vouchers | Get vouchers assigned to a customer
*Vouchery::CustomersApi* | [**get_customers**](docs/CustomersApi.md#get_customers) | **GET** /customers | Get all customers
*Vouchery::CustomersApi* | [**import_customers**](docs/CustomersApi.md#import_customers) | **POST** /customers/import | Import your own customers
*Vouchery::CustomersApi* | [**remove_vouchers_from_customer**](docs/CustomersApi.md#remove_vouchers_from_customer) | **DELETE** /customers/{identifier}/vouchers | Remove (unassign) vouchers from a customer
*Vouchery::CustomersApi* | [**update_customer**](docs/CustomersApi.md#update_customer) | **PATCH** /customers/{identifier} | Update a customer
*Vouchery::ProjectsApi* | [**update_project**](docs/ProjectsApi.md#update_project) | **PATCH** /project | Update project settings
*Vouchery::RedemptionsApi* | [**confirm_redemption**](docs/RedemptionsApi.md#confirm_redemption) | **PATCH** /vouchers/{code}/redemptions | Confirm a redemption
*Vouchery::RedemptionsApi* | [**create_redemption**](docs/RedemptionsApi.md#create_redemption) | **POST** /vouchers/{code}/redemptions | Create a redemption
*Vouchery::RedemptionsApi* | [**delete_redemption**](docs/RedemptionsApi.md#delete_redemption) | **DELETE** /vouchers/{code}/redemptions | Delete a redemption
*Vouchery::RedemptionsApi* | [**get_redemption**](docs/RedemptionsApi.md#get_redemption) | **GET** /vouchers/{code}/redemptions | Get a redemption
*Vouchery::RedemptionsApi* | [**get_redemptions**](docs/RedemptionsApi.md#get_redemptions) | **GET** /campaigns/{campaign_id}/redemptions | Get all redemptions for a campaign
*Vouchery::RewardsApi* | [**create_reward**](docs/RewardsApi.md#create_reward) | **POST** /campaigns/{campaign_id}/rewards | Create a reward
*Vouchery::RewardsApi* | [**delete_reward**](docs/RewardsApi.md#delete_reward) | **DELETE** /rewards/{id} | Delete a reward
*Vouchery::RewardsApi* | [**get_reward**](docs/RewardsApi.md#get_reward) | **GET** /rewards/{id} | Get a reward
*Vouchery::RewardsApi* | [**get_rewards**](docs/RewardsApi.md#get_rewards) | **GET** /campaigns/{campaign_id}/rewards | Get all rewards for a campaign
*Vouchery::RewardsApi* | [**update_reward**](docs/RewardsApi.md#update_reward) | **PATCH** /rewards/{id} | Update a reward
*Vouchery::RulesApi* | [**create_rule**](docs/RulesApi.md#create_rule) | **POST** /campaigns/{campaign_id}/rules | Create a rule
*Vouchery::RulesApi* | [**delete_rule**](docs/RulesApi.md#delete_rule) | **DELETE** /rules/{id} | Delete a rule
*Vouchery::RulesApi* | [**get_rule**](docs/RulesApi.md#get_rule) | **GET** /rules/{id} | Get a rule
*Vouchery::RulesApi* | [**get_rules**](docs/RulesApi.md#get_rules) | **GET** /campaigns/{campaign_id}/rules | Get all rules for a campaign
*Vouchery::RulesApi* | [**update_rule**](docs/RulesApi.md#update_rule) | **PATCH** /rules/{id} | Update a rule
*Vouchery::TriggersApi* | [**create_trigger**](docs/TriggersApi.md#create_trigger) | **POST** /triggers | Create a trigger
*Vouchery::UsersApi* | [**get_me**](docs/UsersApi.md#get_me) | **GET** /me | Get information about current user and project
*Vouchery::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /users/{email} | Get a user
*Vouchery::UsersApi* | [**get_users**](docs/UsersApi.md#get_users) | **GET** /users | Get all users within a project
*Vouchery::UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PATCH** /users/{email} | Update a user
*Vouchery::VouchersApi* | [**batch_generate_vouchers**](docs/VouchersApi.md#batch_generate_vouchers) | **POST** /campaigns/{id}/vouchers/batch | Batch create vouchers
*Vouchery::VouchersApi* | [**create_voucher**](docs/VouchersApi.md#create_voucher) | **POST** /campaigns/{campaign_id}/vouchers | Create a voucher
*Vouchery::VouchersApi* | [**delete_voucher**](docs/VouchersApi.md#delete_voucher) | **DELETE** /vouchers/{code} | Delete a voucher
*Vouchery::VouchersApi* | [**expire_voucher**](docs/VouchersApi.md#expire_voucher) | **PATCH** /vouchers/{code}/expire | Expire a voucher
*Vouchery::VouchersApi* | [**expire_vouchers**](docs/VouchersApi.md#expire_vouchers) | **POST** /campaigns/vouchers/expire | Expire a list of vouchers
*Vouchery::VouchersApi* | [**find_voucher**](docs/VouchersApi.md#find_voucher) | **GET** /vouchers/find | Find a voucher by campaign metadata
*Vouchery::VouchersApi* | [**get_voucher**](docs/VouchersApi.md#get_voucher) | **GET** /vouchers/{code} | Get a voucher
*Vouchery::VouchersApi* | [**get_vouchers**](docs/VouchersApi.md#get_vouchers) | **GET** /campaigns/{campaign_id}/vouchers | Get all vouchers for a campaign
*Vouchery::VouchersApi* | [**import_vouchers**](docs/VouchersApi.md#import_vouchers) | **POST** /campaigns/{id}/vouchers/import | Import your own vouchers


## Documentation for Models

 - [Vouchery::Batch](docs/Batch.md)
 - [Vouchery::Campaign](docs/Campaign.md)
 - [Vouchery::CampaignCreatedBy](docs/CampaignCreatedBy.md)
 - [Vouchery::Category](docs/Category.md)
 - [Vouchery::Company](docs/Company.md)
 - [Vouchery::Customer](docs/Customer.md)
 - [Vouchery::CustomerCategories](docs/CustomerCategories.md)
 - [Vouchery::Error](docs/Error.md)
 - [Vouchery::ErrorErrors](docs/ErrorErrors.md)
 - [Vouchery::InlineObject](docs/InlineObject.md)
 - [Vouchery::InlineObject1](docs/InlineObject1.md)
 - [Vouchery::InlineObject2](docs/InlineObject2.md)
 - [Vouchery::InlineObject3](docs/InlineObject3.md)
 - [Vouchery::InlineObject4](docs/InlineObject4.md)
 - [Vouchery::InlineResponse200](docs/InlineResponse200.md)
 - [Vouchery::InlineResponse2001](docs/InlineResponse2001.md)
 - [Vouchery::MainCampaign](docs/MainCampaign.md)
 - [Vouchery::MainCampaignChildren](docs/MainCampaignChildren.md)
 - [Vouchery::Project](docs/Project.md)
 - [Vouchery::Redemption](docs/Redemption.md)
 - [Vouchery::RedemptionProductItems](docs/RedemptionProductItems.md)
 - [Vouchery::RedemptionVoucher](docs/RedemptionVoucher.md)
 - [Vouchery::Reward](docs/Reward.md)
 - [Vouchery::RewardAddPoints](docs/RewardAddPoints.md)
 - [Vouchery::RewardAssignVoucher](docs/RewardAssignVoucher.md)
 - [Vouchery::RewardGenerateProductItem](docs/RewardGenerateProductItem.md)
 - [Vouchery::RewardGenerateVoucher](docs/RewardGenerateVoucher.md)
 - [Vouchery::RewardSetDiscount](docs/RewardSetDiscount.md)
 - [Vouchery::RewardSetDiscountPerItem](docs/RewardSetDiscountPerItem.md)
 - [Vouchery::Rule](docs/Rule.md)
 - [Vouchery::RuleCustomerCategory](docs/RuleCustomerCategory.md)
 - [Vouchery::RuleCustomerMaxRedemptions](docs/RuleCustomerMaxRedemptions.md)
 - [Vouchery::RuleCustomerPoints](docs/RuleCustomerPoints.md)
 - [Vouchery::RuleProductItemExists](docs/RuleProductItemExists.md)
 - [Vouchery::RuleProductItemExistsItemConditions](docs/RuleProductItemExistsItemConditions.md)
 - [Vouchery::RuleTimeOfOrder](docs/RuleTimeOfOrder.md)
 - [Vouchery::RuleTimeframe](docs/RuleTimeframe.md)
 - [Vouchery::RuleTriggersAmount](docs/RuleTriggersAmount.md)
 - [Vouchery::Trigger](docs/Trigger.md)
 - [Vouchery::User](docs/User.md)
 - [Vouchery::Voucher](docs/Voucher.md)


## Documentation for Authorization


### Bearer

- **Type**: Bearer authentication

