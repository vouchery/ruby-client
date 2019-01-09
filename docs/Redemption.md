# Vouchery::Redemption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**transaction_id** | **String** | Unique transaction ID which identifies underlying transaction in your system, e.g. order number, invoice number | 
**customer_identifier** | **String** | A string uniquely identifying customer in your system, e.g. an ID, uuid, email address | [optional] 
**customer** | [**RedemptionCustomer**](RedemptionCustomer.md) |  | [optional] 
**total_transaction_cost** | **Float** |  | 
**granted_discount** | **Float** |  | [optional] 
**user_agent** | **String** |  | [optional] 
**voucher** | [**RedemptionVoucher**](RedemptionVoucher.md) |  | [optional] 
**location** | [**RedemptionLocation**](RedemptionLocation.md) |  | [optional] 
**categories** | [**Array&lt;RedemptionCategories&gt;**](RedemptionCategories.md) | One or multiple key value pairs, where the key is the category name, and the value is a tag | [optional] 
**confirmed** | **BOOLEAN** | Only confirmed redemption are counted towards budget and total number of redemptions. As long as a redemption is not confirmed, the budget might be used up by other redemptions in the mean time. In that case, accepting the redemption (by updating it) will fail. The same applies for number of redemptions, and budget per day/week/month/year. | 
**validated_at** | **DateTime** |  | [optional] 
**confirmed_at** | **DateTime** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 


