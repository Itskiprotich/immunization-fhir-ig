// Patient Registration FSH file
// This file defines a Patient profile and an example instance based on the NLM Form Builder questionnaire.

Profile: PatientRegistration
Parent: Patient
Description: "A profile for patient registration capturing essential details such as personal information, contact details, next of kin, and address."
* name 1..* MS // At least one name is required
* name.given 1..* MS // Given names are mandatory
* name.family 1..1 MS // Family name is mandatory
* gender 1..1 MS // Gender is mandatory
* birthDate 1..1 MS // Date of birth is mandatory
* telecom 0..* // Contact information such as phone numbers
* telecom.system = #phone // Phone number system
* telecom.use = #mobile // Mobile phone use
* address 0..* // Address details
* address.line 1..* MS // Street/landmark is mandatory
* address.city 1..1 MS // City is mandatory
* address.district 1..1 // District/County
* address.postalCode 0..1 // Postal code if available
* address.country 1..1 // Country is mandatory

Instance: SamplePatient
InstanceOf: PatientRegistration
Usage: #example
Description: "An example patient registration instance based on the profile."
* name.given[0] = "Japheth"
* name.family = "Kiprotich"
* gender = #male
* birthDate = "1980-01-01"
* telecom[0].system = #phone
* telecom[0].value = "+254724743788"
* telecom[0].use = #mobile
* address[0].line[0] = "123 Tena Estate"
* address[0].city = "Nairobi"
* address[0].district = "Nairobi County"
* address[0].postalCode = "00100"
* address[0].country = "Kenya"
