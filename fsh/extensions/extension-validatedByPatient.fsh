

//----------------------------------------
Extension: ValidatedByPatient
Id: validatedByPatient
Description: "If true, then indicates that the patient as indicated that the data is correct. Defined by healthAlliance"
//* ^url = "http://hl7.org.nz/fhir/StructureDefinition/validatedByPatient"


* ^context.type = #element
* ^context.expression = "Address"

* ^context[1].type = #element
* ^context[1].expression = "Telecom"


* extension 0..0
* value[x] only boolean



