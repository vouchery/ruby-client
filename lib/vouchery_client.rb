=begin
#Vouchery API Reference

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 1.0
Contact: hello@vouchery.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

# Common files
require 'vouchery_client/api_client'
require 'vouchery_client/api_error'
require 'vouchery_client/version'
require 'vouchery_client/configuration'

# Models
require 'vouchery_client/models/area'
require 'vouchery_client/models/area_rule'
require 'vouchery_client/models/batch'
require 'vouchery_client/models/budget_rule'
require 'vouchery_client/models/campaign'
require 'vouchery_client/models/category'
require 'vouchery_client/models/category_rule'
require 'vouchery_client/models/customer'
require 'vouchery_client/models/error'
require 'vouchery_client/models/error_errors'
require 'vouchery_client/models/inline_object'
require 'vouchery_client/models/inline_response200'
require 'vouchery_client/models/max_discount_rule'
require 'vouchery_client/models/new_customer_rule'
require 'vouchery_client/models/per_customer_rule'
require 'vouchery_client/models/redemption'
require 'vouchery_client/models/redemption_categories'
require 'vouchery_client/models/redemption_customer'
require 'vouchery_client/models/redemption_location'
require 'vouchery_client/models/redemption_voucher'
require 'vouchery_client/models/time_of_order_rule'
require 'vouchery_client/models/timeframe_rule'
require 'vouchery_client/models/voucher'

# APIs
require 'vouchery_client/api/area_rules_api'
require 'vouchery_client/api/areas_api'
require 'vouchery_client/api/budget_rules_api'
require 'vouchery_client/api/campaigns_api'
require 'vouchery_client/api/categories_api'
require 'vouchery_client/api/category_rules_api'
require 'vouchery_client/api/customers_api'
require 'vouchery_client/api/max_discount_rule_api'
require 'vouchery_client/api/new_customer_rule_api'
require 'vouchery_client/api/per_customer_rule_api'
require 'vouchery_client/api/redemptions_api'
require 'vouchery_client/api/time_of_order_rules_api'
require 'vouchery_client/api/timeframe_rules_api'
require 'vouchery_client/api/vouchers_api'

module Vouchery
  class << self
    # Customize default settings for the SDK using block.
    #   Vouchery.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
