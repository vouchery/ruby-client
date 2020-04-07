# Vouchery::MainCampaign

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | This field is required only when you create a campaign. Main Campaign is a wrapper for multipe Sub Campaings, grouped together. Main Campaign can have own budget and redemptions limit. | 
**id** | **Integer** |  | [optional] [readonly] 
**name** | **String** | The name of the campaign must be unique. | 
**triggers_on** | **String** | What type of trigger sub campaign is reacting on to check rules and give rewards. | [optional] 
**trigger_name** | **String** | If campaign is triggered by custom trigger, it&#39;s name should be specified. | [optional] 
**template** | **String** | Valid template values for MainCampaign are: discount, loyalty, gift_card. | [optional] 
**description** | **String** |  | [optional] 
**max_total_budget** | **Float** | The budget available for all discount campaigns grouped by this campaign. | [optional] 
**max_redemptions** | **Float** | The maximum number of redemptions available across all discount campaigns grouped by this campaign. | [optional] 
**team** | **String** |  | [optional] 
**budget_code** | **String** |  | [optional] 
**children** | [**Array&lt;MainCampaignChildren&gt;**](MainCampaignChildren.md) | List of child campaigns | [optional] [readonly] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**created_by** | [**CampaignCreatedBy**](CampaignCreatedBy.md) |  | [optional] 
**updated_at** | **DateTime** |  | [optional] [readonly] 
**updated_by** | [**CampaignCreatedBy**](CampaignCreatedBy.md) |  | [optional] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::MainCampaign.new(type: null,
                                 id: null,
                                 name: null,
                                 triggers_on: null,
                                 trigger_name: null,
                                 template: null,
                                 description: null,
                                 max_total_budget: null,
                                 max_redemptions: null,
                                 team: null,
                                 budget_code: null,
                                 children: null,
                                 created_at: null,
                                 created_by: null,
                                 updated_at: null,
                                 updated_by: null)
```


