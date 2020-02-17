# Vouchery::RuleCustomerCategory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**category** | **String** | Name of category, rule will be related to. | [optional] 
**matching_type** | **String** | any_of means that customer should have tags in mentioned category. none_of - customer shouldn&#39;t have tags. | 
**tags** | **Array&lt;String&gt;** |  | 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::RuleCustomerCategory.new(type: null,
                                 category: null,
                                 matching_type: null,
                                 tags: null)
```


