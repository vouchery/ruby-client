# Vouchery::RuleTimeOfOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**start_time** | **String** | Time in 24-hour format: HH:MM | 
**end_time** | **String** | Time in 24-hour format: HH:MM | 
**days_of_week** | **Array&lt;Integer&gt;** | Array of days of week, where Sunday is 0, Monday is 1, Saturday is 6 | 
**time_zone** | **String** | Time zone name as defined in the [tz database](http://www.iana.org/time-zones) (e.g. Europe/London) | 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::RuleTimeOfOrder.new(type: null,
                                 start_time: null,
                                 end_time: null,
                                 days_of_week: null,
                                 time_zone: null)
```


