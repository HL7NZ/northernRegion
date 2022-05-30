
Profile:        NorthernRegionPatient
Parent:         Patient
Title:          "Northern Region Patient profile"
Description:    "Represents Patient data exposed through the Northern Region APIs."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NorthernRegionPatient"

* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>healthAlliance Patient profile</div>"

* ^version = "0.2.0"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
//elements that have been removed

* implicitRules 0..0
* active 0..0       //Will only ever be active resources..
* photo 0..0
* link 0..0
* multipleBirth[x] 0..0
* language 0..0

//don't allow modifier extensions
* modifierExtension 0..0

//root level extensions
* extension contains
    $nzEthnicity named nz-ethnicity 0..6 and
    $birthPlace named birth-place 0..1 and
    $patient-iwi named patient-iwi 0..* and
    //$residencyStatus named nz-residency-status 0..1 and 
    $nzcitizenship named nz-citizenship 0..1 and 
   // $sexAtBirth named sex-at-birth 0..1 and
    $currentOccupation named current-occupation 0..1 and 
    $interpreterRequired named interpreter-required 0..1 and
    //$gender-identity named gender-identity 0..1 and
    $sex-at-birth named sex-at-birth 0..1 and 
    $domicileCode named domicile-code 0..1 and 
    $residency-status named residency-status 0..1  


   
* extension[nz-ethnicity] ^short = "The persons ethnicity (up to 6)"
* extension[birth-place] ^short = "Where the person was born"
* extension[patient-iwi] ^short = "The Iwi the person is associated with"
//* extension[nz-residency-status] ^short = "Is the person a NZ resident"
* extension[nz-citizenship] ^short = "The New Zealand citizenship status"
//* extension[sex-at-birth] ^short = "The sex that the patient was at birth. Considered immutable."

* identifier 0..*

//identifier - current NHI. 
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "use" 
* identifier ^slicing.rules = #openAtEnd

* identifier contains 
    NHI 0..1 MS and
    dormantNHI 0..* MS

//This is the current NHI
* identifier[NHI].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[NHI].use = #official (exactly)
* identifier[NHI] ^short = "The persons current NHI number"

//These are any previous NHI's (called 'dormant' by the MOH Identity team)
* identifier[dormantNHI].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[dormantNHI].use = #old (exactly)
* identifier[dormantNHI] ^short = "NHI numbers that have been deprecated"


//gender and birthDate are required
* gender 1..1
* birthDate 1..1

//Name is required - can have many
* name  1..*
* name.extension contains
    $preferred named preferred 0..1
  
* telecom.extension contains
    $authorizedByPatient named authorized-by-patient 0..1 and
    $validatedByPatient named validated-by-patient 0..1 and
    $contactPointPurpose named contact-point-purpose 0..1

* telecom.extension[authorized-by-patient] ^definition = "Indicates that the patient has authorized the use of this method of contact."
* telecom.extension[validated-by-patient] ^definition = "Indicates that the patient has confirmed that this method of contact is correct."
* telecom.extension[contact-point-purpose] ^definition = "The reason for using this contact point"

* address only NzAddress

* address.extension contains
    $authorizedByPatient named authorized-by-patient 0..1 and
    $validatedByPatient named validated-by-patient 0..1 
  //  $suburb named suburb 0..1 and
  //  $buildingName named building-name 0..1 and 
 //   $domicileCode named domicile-code 0..1 and
  //  $nz-geocode named nz-geocode 0..1



* address.extension[authorized-by-patient] ^definition = "Indicates that the patient has authorized the use of this address."
* address.extension[validated-by-patient] ^definition = "Indicates that the patient has confirmed that this address is correct."



//Limit the possible resources for generalPractitioner to a practitionerrole.
//If the actual GPis known, then use Practitioner, if the practice then use Organization.
//both can be populated for a given patient if needed
//Note that the healthLink EDI number is now an extension


//temp * generalPractitioner only Reference(NrPractitioner | NrOrganization)
* generalPractitioner only Reference(NorthernRegionPractitionerRole)
* generalPractitioner.extension contains
    $gp-enrollmentDate named gp-practice-enrollment-date 0..1

* generalPractitioner.extension[gp-practice-enrollment-date] ^definition = "The date that the patient enrolled with this GP Practice"


//The managing organization is the DHB where the Patient resource came from
* managingOrganization only Reference(NorthernRegionOrganization)

//Use the ValueSet from relatedPerson as it has the same codes as contact.relationship
* contact.relationship from http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype

* communication.preferred 0..0

//* telecom.extension contains
//    $cpOther named contactpoint-other 0..1
