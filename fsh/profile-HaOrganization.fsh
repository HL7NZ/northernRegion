// Aliases
Alias: $hlEDI = http://hl7.org.nz/fhir/StructureDefinition/healthlink-edi


Profile:        HaOrganization
Parent:         NzOrganization
Title:          "Northern Region Organization profile"
Description:    "Represents Organization data exposed through the Northern Region APIs. The profile extends the NZ Base profile"


* ^version = "0.1.0"

* extension contains
    $hlEDI named healthlink-edi 0..1


