# Vouchery::Redemption

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] [readonly] 
**transaction_id** | **String** | Unique transaction ID which identifies underlying transaction in your system, e.g. order number, invoice number | 
**customer_identifier** | **String** | A string uniquely identifying customer in your system. Please check customers API. | [optional] 
**total_transaction_cost** | **Float** |  | 
**ttl** | **Float** | How many minutes should the redemption be valid for before it expires. | [optional] 
**granted_discount** | **Float** |  | [optional] [readonly] 
**user_agent** | **String** |  | [optional] 
**voucher** | [**RedemptionVoucher**](RedemptionVoucher.md) |  | [optional] 
**confirmed** | **Boolean** | Only confirmed redemption are counted towards budget and total number of redemptions. | [optional] 
**product_items** | [**Array&lt;RedemptionProductItems&gt;**](RedemptionProductItems.md) | Array of product items, associated with a redemption | [optional] 
**validated_at** | **DateTime** |  | [optional] [readonly] 
**expires_at** | **DateTime** |  | [optional] [readonly] 
**confirmed_at** | **DateTime** |  | [optional] [readonly] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**updated_at** | **DateTime** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::Redemption.new(type: null,
                                 transaction_id: null,
                                 customer_identifier: null,
                                 total_transaction_cost: null,
                                 ttl: null,
                                 granted_discount: null,
                                 user_agent: null,
                                 voucher: null,
                                 confirmed: null,
                                 product_items: null,
                                 validated_at: null,
                                 expires_at: null,
                                 confirmed_at: null,
                                 created_at: null,
                                 updated_at: null)
```


