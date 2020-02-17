# Vouchery::RuleTriggersAmount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**operator** | **String** | What kind of check should system do, comparing number of triggers and rule value property. | 
**value** | **Float** | Value to compare loyalty points with. | 
**group_by** | **String** | How exactly should total amount of triggers be calculated. For each customer, subcampaign or other. | 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::RuleTriggersAmount.new(type: null,
                                 operator: null,
                                 value: null,
                                 group_by: null)
```


