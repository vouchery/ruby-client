# Vouchery::RewardSetDiscountPerItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**discount_value** | **Float** |  | 
**item_conditions** | [**Array&lt;RuleProductItemExistsItemConditions&gt;**](RuleProductItemExistsItemConditions.md) | Array of item conditions, that item should fit | 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::RewardSetDiscountPerItem.new(type: null,
                                 discount_value: null,
                                 item_conditions: null)
```


