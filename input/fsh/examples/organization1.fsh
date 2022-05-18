Instance:   organization1
InstanceOf: NorthernRegionOrganization
Description: "An example Organization"
Usage: #example

* name = "Good health medical centre"

* identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier.value = "hpiorg-01"

* telecom.system = #other
* telecom.system.extension[$edi-address].valueString = "healthlink"
* telecom.value = "abx234"
