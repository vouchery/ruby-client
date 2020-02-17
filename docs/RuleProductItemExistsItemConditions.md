# Vouchery::RuleProductItemExistsItemConditions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** |  | [optional] 
**operator** | **String** | What kind of check should system do, comparing field of item with given value | [optional] 
**value** | **String** | Value to compare. Can be number or string, depending on field to compare | [optional] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::RuleProductItemExistsItemConditions.new(field: null,
                                 operator: null,
                                 value: null)
```


