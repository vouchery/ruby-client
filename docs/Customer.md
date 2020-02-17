# Vouchery::Customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identifier** | **String** | Valid only for creating customer. Determines unique customer identifier in your application. Can be hash, id, email or any other unique value. | 
**name** | **String** | Customer full name. | [optional] 
**loyalty_points** | **Integer** | Number of loyalty points customer will have. | [optional] 
**categories** | [**Array&lt;CustomerCategories&gt;**](CustomerCategories.md) | Determine how customer is related to specific category by providing related tag. | [optional] 
**metadata** | [**Object**](.md) | Any metadata, you want to store, related to customer. Key-value object, that will be displayed on customer profile page. | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**updated_at** | **DateTime** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::Customer.new(identifier: null,
                                 name: null,
                                 loyalty_points: null,
                                 categories: null,
                                 metadata: null,
                                 created_at: null,
                                 updated_at: null)
```


