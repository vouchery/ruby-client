# Vouchery::User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] [readonly] 
**id** | **Integer** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**email** | **String** |  | 
**team** | **String** |  | [optional] 
**role** | **String** |  | 
**access_scope** | **String** |  | 
**active** | **Boolean** |  | [optional] [readonly] 
**masked_api_key** | **String** |  | [optional] [readonly] 
**last_sign_in_at** | **DateTime** |  | [optional] [readonly] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**updated_at** | **DateTime** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::User.new(type: null,
                                 id: null,
                                 name: null,
                                 email: null,
                                 team: null,
                                 role: null,
                                 access_scope: null,
                                 active: null,
                                 masked_api_key: null,
                                 last_sign_in_at: null,
                                 created_at: null,
                                 updated_at: null)
```


