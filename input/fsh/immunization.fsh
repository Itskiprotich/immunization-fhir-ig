
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


Instance: SampleImmunization
InstanceOf: ImmunizationRegistration
Usage: #example
Title: "Immunization Example"
Description: "An example Immunization registration instance based on the profile."
* status = #completed 
* vaccineCode.text = "Sample Vaccine"
* lotNumber = "12345"
* patient.reference = "Patient/SamplePatient"
* occurrenceDateTime = "2015-02-09T11:04:15.817-05:00" 
