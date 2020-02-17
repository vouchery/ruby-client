# Vouchery::RuleTimeframe

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**start_time** | **String** | Date and time in future | 
**end_time** | **String** | Date and time in future | 
**voucher_lifetime** | **Integer** | Number of seconds, each voucher will be valid from the time of it&#39;s creation | 
**time_zone** | **String** | Time zone name as defined in the [tz database](http://www.iana.org/time-zones) (e.g. Europe/London) | 

## Code Sample

```ruby
require 'Vouchery'

instance = Vouchery::RuleTimeframe.new(type: null,
                                 start_time: null,
                                 end_time: null,
                                 voucher_lifetime: null,
                                 time_zone: null)
```


