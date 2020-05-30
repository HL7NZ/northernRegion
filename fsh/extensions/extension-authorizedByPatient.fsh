Extension: AuthorizedByPatient
Id: authorizedByPatient
Description: "If true, then indicates that the patient as authorized the use of this address or telecom to contact them."



* ^context.type = #element
* ^context.expression = "Address"

* ^context[1].type = #element
* ^context[1].expression = "Telecom"

* extension 0..0
* value[x] only boolean

