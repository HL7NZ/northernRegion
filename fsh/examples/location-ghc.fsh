
//Alias: $edi-address = http://hl7.org.nz/fhir/StructureDefinition/edi-address

Instance:   ghc
InstanceOf: NrLocation
//BaseType: Location
Description: "Good Health Clinic"
Usage: #example

* name = "Good Health Medical Centre"


* extension[edi-number].extension[organization].valueIdentifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* extension[edi-number].extension[organization].valueIdentifier.value = "healthlinkOrgId"
* extension[edi-number].extension[value].valueString = "myHLEDIumber"

