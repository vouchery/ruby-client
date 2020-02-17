# Vouchery::RewardSetDiscount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**discount_type** | **String** | Discount type defines if a customer should receive a discount of 10% or $10 on their order. Gft Card type of reward works as a gift card: voucher can be used several times, discount value can be distributed to many transactions. | 
**discount_value** | **Float** |  | 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::RewardSetDiscount.new(type: null,
                                 title: null,
                                 description: null,
                                 discount_type: null,
                                 discount_value: null)
```


