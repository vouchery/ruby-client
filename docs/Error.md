# Vouchery::Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **Boolean** |  | [optional] 
**code** | **String** | Machine-readable API error code | [optional] 
**message** | **String** | Human-readable error message | [optional] 
**errors** | [**Array&lt;ErrorErrors&gt;**](ErrorErrors.md) |  | [optional] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::Error.new(error: null,
                                 code: null,
                                 message: null,
                                 errors: null)
```


