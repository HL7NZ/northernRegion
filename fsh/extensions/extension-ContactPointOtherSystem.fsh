Extension: ContactPointOther
Id: contactpoint-other
Description: "Other values for the ContactPoint system"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/contactpoint-other"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "ContactPoint.system"

//* value[x] only CodeableConcept
//* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/contactpoint-other

* value[x] only Coding
* valueCoding.system from https://standards.digital.health.nz/fhir/ValueSet/contactpoint-other

ValueSet: ContactPointOther
Id: contactpoint-other
Title: "Other values for the ContactPoint system"
Description: "Other values for the ContactPoint system"

* ^url = https://standards.digital.health.nz/fhir/ValueSet/contactpoint-other
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* codes from system https://standards.digital.health.nz/ns/contactpoint-other

CodeSystem: ContactPointOther
Id: contactpoint-other
Title: "Other values for the ContactPoint system"
Description: "Other values for the ContactPoint system"

* ^url = https://standards.digital.health.nz/ns/contactpoint-other
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* #videoconference "Video Conferencing" "eg Zoom or GoToMeeting"
* #webforum "Webforum" 




