
Profile: ImmunizationRegistration
Parent: Immunization
Description: "A profile for capturing immunization details, including vaccine information, administration, and related metadata."

* status 1..1 MS // Status of the immunization is mandatory
* vaccineCode 1..1 MS // Vaccine code is mandatory
* vaccineCode.text 1..1 MS // Vaccine text (name) is mandatory
* lotNumber 1..1 MS // Lot number is mandatory 
* patient 1..1 MS // Patient receiving the vaccine is mandatory
* patient.reference 1..1 MS // Reference to the Patient resource
* occurrenceDateTime 1..1 MS // Date and time of immunization is mandatory

