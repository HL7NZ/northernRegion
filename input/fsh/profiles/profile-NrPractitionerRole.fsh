// Aliases
Alias: $hlEDI = http://hl7.org.nz/fhir/StructureDefinition/healthlink-edi


Profile:        NorthernRegionPractitionerRole
Parent:         PractitionerRole
Title:          "Northern Region PractitionerRole profile"
Description:    "A minimal PractitonerRole for use in specifying the GeneralPractitioner and GP Practice for a patient"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NorthernRegionPractitionerRole"
* ^version = "0.2.0"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


* period 0..0
* code 0..0
* specialty 0..0
* healthcareService 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0
* endpoint 0..0
* telecom 0..0


* practitioner only Reference(NorthernRegionPractitioner)
* location only Reference(NorthernRegionLocation)
* organization only Reference(NorthernRegionOrganization)




