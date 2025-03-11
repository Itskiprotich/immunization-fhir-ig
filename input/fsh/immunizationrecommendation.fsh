Profile: ImmunizationRecommendationProfile
Parent: ImmunizationRecommendation
Description: "A profile for ImmunizationRecommendation resources with specific constraints and extensions."
  
* patient 1..1 MS 
* patient.reference MS 
* date 1..1 MS 
* recommendation 1..* MS
* recommendation.forecastStatus MS
* recommendation.forecastStatus.text MS
* recommendation.dateCriterion 1..* MS
* recommendation.dateCriterion.code 1..1 MS
* recommendation.dateCriterion.value  1..1 MS

 

Instance: ExampleImmunizationRecommendation
InstanceOf: ImmunizationRecommendation
Title: "ImmunizationRecommendation Example"
Description: "An example ImmunizationRecommendation resource."
Usage: #example
 
* patient.reference = "Patient/SamplePatient"
* date = "2015-02-09T11:04:15.817-05:00" 
* recommendation[0].forecastStatus.text = "Not Complete"
* recommendation[0].dateCriterion[0].code.coding[0].system = "http://example.org/fhir/CodeSystem/immunization-recommendation-date-criterion"
* recommendation[0].dateCriterion[0].code.coding[0].code = #30981-5
* recommendation[0].dateCriterion[0].code.coding[0].display = "Earliest Date"  
* recommendation[0].dateCriterion[0].value = "2025-01-01"

