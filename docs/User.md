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
                                 created_at: null,
                                 updated_at: null)
```


