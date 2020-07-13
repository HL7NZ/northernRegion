
Instance:   bundle2
InstanceOf: Bundle
Description: "Sample query response"
Usage: #example

* type = #searchset        //will actuallyy 
* entry[0].resource = patient2
* entry[0].fullUrl = "http://clinfhir.com/Patient/patient2"

* entry[1].resource = gp-pracrole1
* entry[1].fullUrl = "http://clinfhir.com/PractitionerRole/gp-pracrole1"

* entry[2].resource = ghc
* entry[2].fullUrl = "http://clinfhir.com/Location/ghc"

* entry[3].resource = drwelby
* entry[3].fullUrl = "http://clinfhir.com/Practitioner/drwelby"

Instance:   patient2
InstanceOf: NrPatient
Description: "An example patient using PractitionerRole for the GP link."
Usage: #example


* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* text.status = #additional

* extension[nz-ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4#11111 "New Zealand European"
* extension[nz-ethnicity][1].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4#12111 "Celtic"
* extension[birth-place].extension[country].valueCodeableConcept = urn:iso:std:iso:3166#nz
* extension[birth-place].extension[place-of-birth].valueString = "Palmerston North"

* extension[citizenship].extension[status].valueCodeableConcept =  https://standards.digital.health.nz/ns/citizenship-status#CIT "Citizen"
* extension[citizenship].extension[source].valueCodeableConcept =  https://standards.digital.health.nz/ns/info-source#PPRT "Passport"

* extension[sex-at-birth].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"

* extension[interpreter-required].valueBoolean = true

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

* deceasedBoolean = false
* gender = #male
* birthDate = "1989-12-12"

//email address & phone
* telecom.system = #email
* telecom.use = #home
* telecom.rank = 1
* telecom.period.start = "2020-01-01"
* telecom.value = "johndoe@erewhon.com"
* telecom.extension[authorized-by-patient].valueBoolean = true
* telecom.extension[validated-by-patient].valueBoolean = true

* telecom[1].system = #phone
* telecom[1].value = "+64 9 000 0000"


//physical address

* address.extension[building-name].valueString = "The Black building"
* address.extension[suburb].valueString = "Waipu river"
* address.extension[nz-geocode].extension[longitude].valueDecimal = 100
* address.extension[nz-geocode].extension[latitute].valueDecimal = 100
* address.extension[domicile-code].valueCodeableConcept.coding.code = #0040
* address.extension[domicile-code].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/ns/domicileCode"
* address.extension[domicile-code].valueCodeableConcept.coding.display = "Waipu"
* address.extension[authorized-by-patient].valueBoolean = true
* address.extension[validated-by-patient].valueBoolean = true

* address.line = "23 Thule St"
* address.city = "Waipu"
* address.district = "Northland"
* address.postalCode = "0510"
* address.country = "New Zealand"

//The Managing organization describes the DHB that supplied this record. This will always be an external resource.
* managingOrganization = Reference(cmdhb)   //DHB is Counties Manukau
* managingOrganization.display = "Counties-Manukau DHB"

* generalPractitioner = Reference(gp-pracrole1)       //the GP
* generalPractitioner.display = "Dr Marcus Welby"


/*
* generalPractitioner[1] = Reference(gp-org1)       //the GP Practice
* generalPractitioner[1].display = "Good Health Medical Centre"
* generalPractitioner[1].extension[gp-practice-enrollment-date].valueDate = "2020-01-01"
*/

* communication.language.coding.system = "urn:ietf:bcp:47"
* communication.language.coding.code = #fr
* communication.language.coding.display = "French" 


//* contact.relationship.coding.
* contact.relationship.coding  = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact.name.text = "Mr John Watson"

* contact.telecom.system = #phone
* contact.telecom.value = "+64 9 000 0001"

* contact.address.line = "23 Thule St"
* address.city = "Waipu"

* contact.gender = #male


//The practitonerRole 
Instance:   gp-pracrole1
InstanceOf: NrPractitionerRole
Description: "Practitioner"
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* text.status = #additional

* practitioner = Reference(drwelby)
* location = Reference(ghc)






/*
//The GP 
Instance:   gp-prac1
InstanceOf: NrPractitioner
Description: "Practitioner"
Usage: #example

* name.text = "Dr  Kildaire"
* identifier.system = "https://standards.digital.health.nz/id/hpi-person"
* identifier.value = "welby1"

//The GP practice 
Instance:   gp-org1
InstanceOf: NrOrganization
Description: "GP Practice"
Usage: #example

* name = "GP Medical centre"
* identifier.system = "https://standards.digital.health.nz/id/hpi-organisation"
* identifier.value = "gpprac"

*/