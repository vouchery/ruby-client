# Vouchery::Company

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] [readonly] 
**name** | **String** |  | 
**country_code** | **String** |  | [readonly] 
**billing_address** | **String** |  | 
**tax_id** | **String** |  | [optional] 
**billing_email** | **String** |  | [optional] 
**logo_url** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**updated_at** | **DateTime** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::Company.new(type: null,
                                 name: null,
                                 country_code: null,
                                 billing_address: null,
                                 tax_id: null,
                                 billing_email: null,
                                 logo_url: null,
                                 created_at: null,
                                 updated_at: null)
```


