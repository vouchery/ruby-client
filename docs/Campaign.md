# Vouchery::Campaign

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**id** | **Integer** |  | [optional] 
**parent_id** | **Integer** |  | 
**campaign_type** | **String** | Type of campaign. | 
**status** | **String** |  | [optional] 
**name** | **String** | The name of the campaign. | 
**description** | **String** |  | [optional] 
**customer_information** | **String** | Text that can be displayed to the customer once the redemption is validated or confirmed. | [optional] 
**voucher_type** | **String** | Determines what type of vouchers can be generated for campaign. Generic coupons (eg. SALE10) can be redeemed multiple times. Unique vouchers allow for greater control and better tracking of who and how is using your promotions. | [optional] 
**max_total_budget** | **Float** | The budget available for all discount campaigns grouped by this campaign. | [optional] 
**max_redemptions** | **Float** | The maximum number of redemptions available across all discount campaigns grouped by this campaign. | [optional] 
**minimum_value** | **Float** |  | [optional] 
**maximum_value** | **Float** |  | [optional] 
**discount_type** | **String** | Discount type defines if a customer receive should receive a discount of 10% or $10 on their order. | [optional] 
**discount_value** | **Float** |  | [optional] 
**currency** | **String** | Currency denominating monetary values in this campaign (USD, GBP, EUR, AUD) | [optional] 
**currency_symbol** | **String** | Currency symbol ($, £, €) | [optional] 
**reward_title** | **String** | Short reward title to be displayed to the customer (max. 40 characters) | [optional] 
**reward_value** | **String** | Automatically generated reward value description, e.g. \&quot;10% off\&quot;, \&quot;$5 off\&quot; | [optional] 
**reward_description** | **String** | Short reward description to be displayed to the customer (max. 100 characters) | [optional] 
**team** | **String** |  | [optional] 
**channel** | **String** |  | [optional] 
**purpose** | **String** |  | [optional] 
**budget_code** | **String** |  | [optional] 
**medium** | **String** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 


