
// Aliases
//Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
//Alias: $birthPlace = http://hl7.org.nz/fhir/StructureDefinition/birthPlace

Alias: $preferred = http://hl7.org/fhir/StructureDefinition/iso21090-preferred
//Alias: $nzEthnicity = http://hl7.org.nz/fhir/StructureDefinition/nzEthnicity
Alias: $authorizedByPatient = http://hl7.org.nz/fhir/northernregion/StructureDefinition/authorized-by-patient
Alias: $validatedByPatient =  http://hl7.org.nz/fhir/northernregion/StructureDefinition/validated-by-patient
//Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicileCode

Profile:        HaPatient
Parent:         NzPatient
Title:          "Common Patient profile"
Description:    "Represents patient demographics exposed by healthAlliance systems"

* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>healthAlliance Patient profile</div>"

//elements that have been removed
//* active 0..
* photo 0..0
* contact 0..0
* communication 0..0
* link 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0

//Name is required - can have many
* name  1..*
* name.extension contains
    $preferred named preferred 0..1
  

* telecom.extension contains
    $authorizedByPatient named authorized-by-patient 0..1 and
    $validatedByPatient named validated-by-patient 0..1

// address is required and has a suburb extension. 
* address only nzAddress

* address.extension contains
    $validatedByPatient named validated-by-patient 0..1


* address 1..*

// todo - is this correct? * address.line 1..*     //there will always be at least 1 line

//Limit the possible resources for generalPractitioner to a practitioner or an organization.
//If the actual GPis known, then use Practitioner, if the practice then use Organization.
//Note that this might still be a contained resource - that's still supported by this profile
//It might also be possible to use PractitionerRole - but the value of that is unclear at this time.
* generalPractitioner only Reference(HaPractitioner | HaOrganization)

//The managing organization is the DHB where the Patient resource came from
* managingOrganization only Reference(HaOrganization)






