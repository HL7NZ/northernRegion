
Profile:        NorthernRegionLocation
Parent:         Location
Title:          "Northern Region Location profile"
Description:    "Represents Location data exposed through the Northern Region APIs."


* ^version = "0.2.0"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NorthernRegionLocation"

// unsupported elements
* status 0..0
* operationalStatus 0..0
//alias 0..0
//* description 0..0
* mode 0..0
//* type 0..0
//* address 0..0
* physicalType 0..0
* position 0..0
* managingOrganization 0..0
//* partOf 0..0
* hoursOfOperation 0..0
* availabilityExceptions 0..0

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ Location profile</div>"
* ^text.status = #additional



//slice the identifier
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"

* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.rules = #open

* identifier contains 
    HpifacId 0..1 MS and
//    dormant 0..* MS and
    MOHFacId 0..1 MS

* identifier[HpifacId].system = "https://standards.digital.health.nz/ns/hpi-facility-id" (exactly)
* identifier[HpifacId].use = #official (exactly)
* identifier[HpifacId] ^short = "The current Facility id for this location"

//* identifier[dormant].system = "https://standards.digital.health.nz/ns/hpi-facility-id" (exactly)
//* identifier[dormant].use = #old (exactly)
//* identifier[dormant] ^short = "Old facility id's that have been deprecated"


* identifier[MOHFacId].system = "https://standards.digital.health.nz/ns/legacy-tbd-id" (exactly)
* identifier[MOHFacId].use = #official (exactly)
* identifier[MOHFacId] ^short = "The MOH (NZHIS) Legacy facility code)"


/*
* address.extension contains

    $suburb named suburb 0..1 and
    $buildingName named building-name 0..1 and 
 //   $domicileCode named domicile-code 0..1 and
    $nz-geocode named nz-geocode 0..1

*/
* address only NzAddress

* partOf = Reference(http://hl7.org.nz/fhir/StructureDefinition/NorthernRegionLocation)








