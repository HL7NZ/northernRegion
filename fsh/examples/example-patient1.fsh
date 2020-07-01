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

* generalPractitioner[0] = Reference(drwelby)       //the GP
* generalPractitioner[0].display = "Dr Marcus Welby"
* generalPractitioner[0].extension[gp-practice-enrollment-date].valueDate = "2020-01-01"

* generalPractitioner[1] = Reference(gp-org1)       //the GP Practice
* generalPractitioner[1].display = "Good Health Medical Centre"
* generalPractitioner[1].extension[gp-practice-enrollment-date].valueDate = "2020-01-01"

* communication.language.coding.system = "urn:ietf:bcp:47"
* communication.language.coding.code = #fr-be
* communication.language.coding.display = "French (Belgium)" 
* communication.extension[interpreter-required].valueBoolean = true


//* contact.relationship.coding.
* contact.relationship.coding  = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.text = "Mr John Watson"

* contact.telecom.system = #phone
* contact.telecom.value = "+64 9 000 0001"

* contact.address.line = "23 Thule St"
* address.city = "Waipu"

* contact.gender = #male


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

