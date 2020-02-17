# Vouchery::RewardGenerateVoucher

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**prefix** | **String** | A prefix in all generated vouchers. Needs to be unique within a project. | 
**code_type** | **String** | What characters should the code include. Possible choices are digits, letters, and mixed. | 
**random_part_length** | **Float** | How long should the random part of the code be? Valid values are between 2 and 10. | [optional] 
**voucher_campaign_id** | **Float** | Subcampaign ID, new voucher will be related to. | 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::RewardGenerateVoucher.new(type: null,
                                 title: null,
                                 description: null,
                                 prefix: null,
                                 code_type: null,
                                 random_part_length: null,
                                 voucher_campaign_id: null)
```


