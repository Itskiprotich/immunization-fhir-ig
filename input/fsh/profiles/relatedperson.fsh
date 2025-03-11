Profile: MotherOtherChildren
Parent: RelatedPerson
Id: mother-other-children
Title: "Mother's Other Children"
Description: "Represents the mother's other children as RelatedPersons."

* patient 1..1 MS
* patient only Reference(Patient)
* name 1..*
* name.given 1..*
* birthDate 0..1
* gender 1..1 MS
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)


Instance: Child1
InstanceOf: MotherOtherChildren
Title: "Example RelatedPerson - Mother's Other Child"
Description: "An example of a mother's other child as a RelatedPerson resource."

* patient = Reference(Patient/mother-example)
* name.given = "John"
* birthDate = "2015-01-01"
* gender = #male
