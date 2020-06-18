Instance:   patient1
InstanceOf: HaPatient
Description: "An example patient with all data items populated."
Usage: #example


* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* text.status = #additional

* extension[nz-ethnicity].valueCodeableConcept = https://standards.digital.health.nz/cs/ethnic-group-level-4#11111 "New Zealand European"
* extension[nz-ethnicity][1].valueCodeableConcept = https://standards.digital.health.nz/cs/ethnic-group-level-4#12111 "Celtic"
* extension[birth-place].extension[country].valueCodeableConcept = urn:iso:std:iso:3166#nz
* extension[birth-place].extension[place-of-birth].valueString = "Palmerston North"

//the current NHI
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/id/nhi"
* identifier.value = "WER4568"

//the dormant NHI
* identifier[1].use = #old
* identifier[1].system = "https://standards.digital.health.nz/id/nhi"
* identifier[1].value = "ABC1234"

* name.family = "Doe"
* name.given = "John"
* name.given[1] = "Albertus"
* name.extension[preferred].valueBoolean = true

* name.extension[preferred].valueBoolean = true
* deceasedBoolean = false
* gender = #male
* birthDate = "1989-12-12"

//email address & phone
* telecom.system = #email
* telecom.value = "johndoe@erewhon.com"
* telecom.extension[authorized-by-patient].valueBoolean = true
* telecom.extension[validated-by-patient].valueBoolean = true

* telecom[1].system = #phone
* telecom[1].value = "+64 9 000 0000"


//physical address
* address.line = "23 Thule St"
* address.extension[building-name].valueString = "The Black building"
* address.city = "Waipu"
* address.extension[suburb].valueString = "Waipu river"

* address.extension[nz-geocode].extension[longitude].valueDecimal = 100
* address.extension[nz-geocode].extension[latitute].valueDecimal = 100
* address.extension[domicile-code].valueCodeableConcept.coding.code = #0040
* address.extension[domicile-code].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/cs/domicileCode"
* address.extension[domicile-code].valueCodeableConcept.coding.display = "Waipu"


//The Managing organization describes the DHB that supplied this record. This will always be an external resource.
* managingOrganization = Reference(cmdhb)   //DHB is Counties Manukau
* managingOrganization.display = "Counties-Manukau DHB"
//The general practitioner is described by the contained practitioner resource)
* generalPractitioner = Reference(drwelby)       //the GP
* generalPractitioner.display = "Dr Marcus Welby"
* generalPractitioner[1] = Reference(gp-org1)       //the GP
* generalPractitioner[1].display = "Good Health Medcial Centre"

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

