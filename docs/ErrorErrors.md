# Vouchery::ErrorErrors

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attribute** | **String** | Attribute name | [optional] 
**code** | **String** | Machine-readable API error code | [optional] 
**message** | **String** | Human-readable error message | [optional] 
**boundary_value** | **String** | Minimum, maximum, or expected value for this attribute | [optional] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::ErrorErrors.new(attribute: null,
                                 code: null,
                                 message: null,
                                 boundary_value: null)
```


