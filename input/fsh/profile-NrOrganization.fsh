// Aliases
Alias: $hlEDI = http://hl7.org.nz/fhir/StructureDefinition/healthlink-edi


Profile:        NorthernRegionOrganization
Parent:         Organization
Title:          "Northern Region Organization profile"
Description:    "Represents Organization data exposed through the Northern Region APIs."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NorthernRegionOrganization"
* ^version = "0.2.0"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


//slice the identifier for HPI Organization identifierr
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"

* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.rules = #open
* identifier contains 
    orgId 0..* MS

* identifier[orgId].system = "https://standards.digital.health.nz/ns/hpi-organisation-id" (exactly)
* identifier[orgId].use = #official (exactly)
* identifier[orgId] ^short = "The current HPI organization Id for this Organization"




