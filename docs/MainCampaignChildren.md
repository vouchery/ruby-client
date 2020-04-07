# Vouchery::MainCampaignChildren

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | This field is required only when you create a campaign. Main Campaign is a wrapper for multipe Sub Campaings, grouped together. Main Campaign can have own budget and redemptions limit. | 
**id** | **Integer** |  | [optional] [readonly] 
**parent_id** | **Integer** | Required only for subcampaigns. | 
**status** | **String** |  | [optional] 
**name** | **String** | The name of the campaign must be unique. | 
**triggers_on** | **String** | What type of trigger sub campaign is reacting on to check rules and give rewards. | [optional] 
**trigger_name** | **String** | If campaign is triggered by custom trigger, it&#39;s name should be specified. | [optional] 
**template** | **String** | Valid template values for MainCampaign are: discount, loyalty, gift_card. For SubCampaign valid templates are sub_redemption, sub_reward_points, sub_generate_vouchers. | [optional] 
**description** | **String** |  | [optional] 
**customer_information** | **String** | Text that can be displayed to the customer once the redemption is validated or confirmed. | [optional] 
**max_total_budget** | **Float** | The budget available for all discount campaigns grouped by this campaign. | [optional] 
**max_redemptions** | **Float** | The maximum number of redemptions available across all discount campaigns grouped by this campaign. | [optional] 
**minimum_value** | **Float** |  | [optional] 
**max_discount** | **Float** |  | [optional] 
**redemptions_count** | **Float** |  | [optional] [readonly] 
**total_budget_spent** | **Float** |  | [optional] [readonly] 
**vouchers_distributed_count** | **Integer** |  | [optional] [readonly] 
**vouchers_count** | **Integer** |  | [optional] [readonly] 
**currency** | **String** | Currency denominating monetary values in this campaign (USD, GBP, EUR, AUD) | [optional] [readonly] 
**currency_symbol** | **String** | Currency symbol ($, £, €) | [optional] [readonly] 
**team** | **String** |  | [optional] 
**channel** | **String** |  | [optional] 
**purpose** | **String** |  | [optional] 
**budget_code** | **String** |  | [optional] 
**medium** | **String** |  | [optional] 
**voucher_type** | **String** | Determines what type of vouchers can be generated for campaign. Generic vouchers (eg. SALE10) can be redeemed multiple times. Unique vouchers allow for greater control and better tracking of who and how is using your promotions. | [optional] 
**voucher_code_type** | **String** | What characters should the code include when new voucher is created. Possible choices are digits, letters, and mixed. | [optional] 
**voucher_random_part_length** | **Float** | How long should the random part of the code be? Valid values are between 2 and 10, depending on batch size. | [optional] 
**voucher_prefix** | **String** | A prefix that will be used to generate vouchers. Needs to be unique within project. | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**created_by** | [**CampaignCreatedBy**](CampaignCreatedBy.md) |  | [optional] 
**updated_at** | **DateTime** |  | [optional] [readonly] 
**updated_by** | [**CampaignCreatedBy**](CampaignCreatedBy.md) |  | [optional] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::MainCampaignChildren.new(type: null,
                                 id: null,
                                 parent_id: null,
                                 status: null,
                                 name: null,
                                 triggers_on: null,
                                 trigger_name: null,
                                 template: null,
                                 description: null,
                                 customer_information: null,
                                 max_total_budget: null,
                                 max_redemptions: null,
                                 minimum_value: null,
                                 max_discount: null,
                                 redemptions_count: null,
                                 total_budget_spent: null,
                                 vouchers_distributed_count: null,
                                 vouchers_count: null,
                                 currency: null,
                                 currency_symbol: null,
                                 team: null,
                                 channel: null,
                                 purpose: null,
                                 budget_code: null,
                                 medium: null,
                                 voucher_type: null,
                                 voucher_code_type: null,
                                 voucher_random_part_length: null,
                                 voucher_prefix: null,
                                 created_at: null,
                                 created_by: null,
                                 updated_at: null,
                                 updated_by: null)
```


