Instance:   patient1
InstanceOf: HaPatient
Description: "An example patient with all data items populated."
Usage: #example


* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* text.status = #additional

//the current NHI
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/id/nhi"
* identifier.value = "WER4568"

* name.family = "Doe"
* name.given = "John"
* name.given[1] = "Albertus"

* name.extension[preferred].valueBoolean = true
* deceasedBoolean = false
* gender = #male
* birthDate = "1989-12-12"

//email address & phone
* telecom.system = #email
* telecom.value = "johndoe@erewhon.com"
* telecom[1].system = #phone
* telecom[1].value = "+64 9 000 0000"

//physical address
* address.line = "23 Thule St"
* address.city = "Waipu"
* address.extension[suburb].valueString = "Waipu river"

//The Managing organization describes the DHB that supplied this record. This will always be an external resource.
* managingOrganization = Reference(pr1)   //DHB is Counties Manukau

//The general practitioner is described by the contained practitioner resource)
* generalPractitioner.reference = "PractitionerRole/pr1"       //the GP

//The GP 
Instance:   gp-prac1
InstanceOf: HaPractitioner
Description: "Practitioner"
Usage: #example

* name.text = "Dr  Kildaire"
* identifier.system = "https://standards.digital.health.nz/id/hpi-person"
* identifier.value = "welby1"

//The GP practice 
Instance:   gp-org1
InstanceOf: HaOrganization
Description: "GP Practice"
Usage: #example

* name = "GP Medical centre"
* identifier.system = "https://standards.digital.health.nz/id/hpi-organisation"
* identifier.value = "gpprac"

//The linking PractitionerRole
Instance:   pr1
InstanceOf: PractitionerRole
Description: "GP Practice"
Usage: #example

* organization = Reference(gp-org1)
* practitioner = Reference(gp-prac1)


//The DHB 
Instance:   cmdhb
InstanceOf: HaOrganization
Description: "Counties manakau DHB"
Usage: #example

* name = "Counties manakau DHB"
* identifier.system = "https://standards.digital.health.nz/id/hpi-organisation"
* identifier.value = "cmdhb"