Extension: EnrollmentDate
Id: enrollment-date
Description: "The date of enrollment of the patient with this GP practice."

//* ^definition = "If true, then indicates that the patient as authorized the use of this address or telecom to contact them." 
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/gp-practice-enrollment-date"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^status = #active

* ^context.type = #element
* ^context.expression = "Patient.generalPractitioner"


* extension 0..0
* value[x] only date


