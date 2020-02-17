# Vouchery::RuleCustomerPoints

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Customer loyalty points should fit specific conditions. | 
**operator** | **String** | What kind of check should system do, comparing loyalty points and rule value property. | 
**value** | **Float** | Value to compare loyalty points with. | 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::RuleCustomerPoints.new(type: null,
                                 operator: null,
                                 value: null)
```


