
// Aliases

Alias: $preferred = http://hl7.org/fhir/StructureDefinition/iso21090-preferred
Alias: $authorizedByPatient = http://hl7.org.nz/fhir/northernregion/StructureDefinition/authorized-by-patient
Alias: $validatedByPatient =  http://hl7.org.nz/fhir/northernregion/StructureDefinition/validated-by-patient
Alias: $interpreterRequired = http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired

Profile:        HaPatient
Parent:         NzPatient
Title:          "Northern Region Patient profile"
Description:    "Represents Patient data exposed through the Northern Region APIs. The profile extends the NZ Base profile"

* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>healthAlliance Patient profile</div>"

* ^version = "0.2.0"
//elements that have been removed
//* active 0..
* photo 0..0
* link 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0

//gender and birthDate are required
* gender 1..1
* birthDate 1..1

//Name is required - can have many
* name  1..*
* name.extension contains
    $preferred named preferred 0..1
  

* telecom.extension contains
    $authorizedByPatient named authorized-by-patient 0..1 and
    $validatedByPatient named validated-by-patient 0..1

// address is required and has a suburb extension. 
* address only NzAddress

* address.extension contains
    $authorizedByPatient named authorized-by-patient 0..1 and
    $validatedByPatient named validated-by-patient 0..1

* address 1..*

// todo - is this correct? * address.line 1..*     //there will always be at least 1 line

//Limit the possible resources for generalPractitioner to a practitioner or an organization.
//If the actual GPis known, then use Practitioner, if the practice then use Organization.
//both can be populated for a given patient if needed
//Note that the healthLink EDI number is on the Organization resource
* generalPractitioner only Reference(HaPractitioner | HaOrganization)

//The managing organization is the DHB where the Patient resource came from
* managingOrganization only Reference(HaOrganization)

* communication.extension contains
    $interpreterRequired named interpreter-required 0..1






