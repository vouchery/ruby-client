# Vouchery::Batch

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **BOOLEAN** | Should be generated vouchers be active? | 
**size** | **Float** | How many unique vouchers to generate? Can be an number between 1 and 50 000. | 
**code_type** | **String** | What characters should the code include. Possible choices are digits, letters, and mixed. | 
**random_part_length** | **Float** | How long should the random part of the code be? Valid values are between 2 and 10, depending on batch size. | 
**prefix** | **String** | A prefix is required for batch generated coupons. Needs to be unique within project. | 


