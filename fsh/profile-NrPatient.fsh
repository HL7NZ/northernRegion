
// Aliases

//international
Alias: $preferred = http://hl7.org/fhir/StructureDefinition/iso21090-preferred      
Alias: $interpreterRequired = http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired

//this IG
Alias: $authorizedByPatient = http://hl7.org.nz/fhir/StructureDefinition/authorized-by-patient
Alias: $validatedByPatient =  http://hl7.org.nz/fhir/StructureDefinition/validated-by-patient

//NHI IG
Alias: $gp-enrollmentDate = http://hl7.org.nz/fhir/StructureDefinition/gp-practice-enrollment-date


Profile:        NrPatient
Parent:         CommonPatient
Title:          "Northern Region Patient profile"
Description:    "Represents Patient data exposed through the Northern Region APIs. The profile extends the NZ Base profile"

* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>healthAlliance Patient profile</div>"

* ^version = "0.2.0"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
//elements that have been removed

* active 0..0       //Will only ever be active resources..
* photo 0..0
* link 0..0
* multipleBirth[x] 0..0
* language 0..0
* active 0..0

//don't allow modifier extensions
* modifierExtension 0..0

* extension contains     
    $interpreterRequired named interpreter-required 0..1

* identifier 0..*

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

* telecom.extension[authorized-by-patient] ^definition = "Indicates that the patient has authorized the use of this method of contact."
* telecom.extension[validated-by-patient] ^definition = "Indicates that the patient has confirmed that this method of contact is correct."

// address is required and has a suburb extension. 
* address only CommonAddress

* address.extension contains
    $authorizedByPatient named authorized-by-patient 0..1 and
    $validatedByPatient named validated-by-patient 0..1

* address.extension[authorized-by-patient] ^definition = "Indicates that the patient has authorized the use of this address."
* address.extension[validated-by-patient] ^definition = "Indicates that the patient has confirmed that this address is correct."



//Limit the possible resources for generalPractitioner to a practitioner or an organization.
//If the actual GPis known, then use Practitioner, if the practice then use Organization.
//both can be populated for a given patient if needed
//Note that the healthLink EDI number is now an extension


//temp * generalPractitioner only Reference(NrPractitioner | NrOrganization)
* generalPractitioner only Reference(NrPractitionerRole)

* generalPractitioner.extension contains
    //$edi-address named edi-address 0..1 and
    $gp-enrollmentDate named gp-practice-enrollment-date 0..1


//* generalPractitioner.extension[edi-address] ^definition = "The healthLink EDI address for this GP Practice"
* generalPractitioner.extension[gp-practice-enrollment-date] ^definition = "The date that the patient enrolled with this GP Practice"

//* generalPractitioner.extension[edi-address] ^short = "The healthLink EDI address for this GP Practice"
* generalPractitioner.extension[gp-practice-enrollment-date] ^short = "The date that the patient enrolled with this GP Practice"


//The managing organization is the DHB where the Patient resource came from
* managingOrganization only Reference(NrOrganization)



* communication.preferred 0..0
