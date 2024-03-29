Profile:        NorthernRegionPractitioner
Parent:         Practitioner
Title:          "Northern region Practitioner profile"
Description:    "Represents Practitioner data exposed by northern region DHBs."


* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NorthernRegionPractitioner"
* ^version = "0.2.0"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Northern Region Practitioner profile</div>"
* ^text.status = #additional

* active 0..0
* telecom 0..0
* birthDate 0..0
* photo 0..0
* address 0..0



//top level  extensions
* extension contains 
    $nzEthnicity named nzEthnicity 0..6

//Note that the extension is on the ContactPoint.system element
//* telecom.extension contains
 //   $contactPointPurpose named contact-point-purpose 0..1

//* telecom.system.extension contains
 //   $edi-address named edi-address 0..1


//must be one name with a family name
//todo - should we really insist on a family name? May not always be known...
* name 1..* MS


//slice identifier to add the HPI as Must Support
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"

* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.description = "The identifiers"
* identifier ^slicing.rules = #open
* identifier contains 
    HPI_CPN 0..1 MS 

* identifier[HPI_CPN].system = "https://standards.digital.health.nz/ns/hpi-person-id" (exactly)
* identifier[HPI_CPN].use = #official (exactly)
//* identifier[HPI_CPN].type 0..0
* identifier[HPI_CPN] ^short = "The currently active CPN (Common Person Name)"
* identifier[HPI_CPN] ^definition = "The HPI Person Identifier or CPN of the person that is currently in use.   It can be referred to as the ‘Live’ CPN or “live” HPI Person ID”. A person can only have one live CPN"

* qualification.extension contains
    http://hl7.org.nz/fhir/StructureDefinition/registration-status-code named registration-status-code 0..1 and
    http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice named scope-of-practice 0..1 and
    http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice named condition-on-practive 0..1