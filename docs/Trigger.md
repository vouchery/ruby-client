# Vouchery::Trigger

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**name** | **String** | Custom action name, your campaign is triggered on | [optional] 
**customer_identifier** | **String** | A string uniquely identifying customer in your system. Please check customers API. | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**updated_at** | **DateTime** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::Trigger.new(type: null,
                                 name: null,
                                 customer_identifier: null,
                                 created_at: null,
                                 updated_at: null)
```


