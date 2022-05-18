// Aliases
Alias: $hlEDI = http://hl7.org.nz/fhir/StructureDefinition/healthlink-edi


Profile:        NorthernRegionPractitionerRole
Parent:         PractitionerRole
Title:          "Northern Region PractitionerRole profile"
Description:    "A minimal PractitonerRole for use in specifying the GenerapPractitoner and GP Practice for a patient"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NrPractitionerRole"
* ^version = "0.2.0"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* active 0..0
* period 0..0
* code 0..0
* specialty 0..0
* healthcareService 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0

/* THis seems to cause an error in the IG publisher. Need to track down... */
* practitioner only Reference(NorthernRegionPractitioner)
* location only Reference(NorthernRegionLocation)
* organization only Reference(NorthernRegionOrganization)




