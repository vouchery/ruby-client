# Vouchery::Voucher

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**campaign_id** | **Integer** |  | [optional] [readonly] 
**active** | **Boolean** |  | [readonly] 
**status** | **String** |  | [optional] 
**code** | **String** |  | 
**customer_identifier** | **String** | A string uniquely identifying customer in your system. Please check customers API. | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**updated_at** | **DateTime** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::Voucher.new(type: null,
                                 campaign_id: null,
                                 active: null,
                                 status: null,
                                 code: null,
                                 customer_identifier: null,
                                 created_at: null,
                                 updated_at: null)
```


