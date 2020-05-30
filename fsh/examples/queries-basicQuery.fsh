
//todo - need to remove this from the IG


Instance:   bundleQueries
InstanceOf: Bundle
Description: "Sample queries for IG companion"
Usage: #definition

* type = #transaction

* entry.resource = patientQueries
* entry.request.method = #PUT
* entry.request.url = "DocumentReference/patientQueries"

* entry[1].resource = providerQueries
* entry[1].request.method = #PUT
* entry[1].request.url = "DocumentReference/providerQueries"

Instance:   patientQueries
InstanceOf: DocumentReference
Description: "Sample queries for IG companion"
Usage: #inline

* status = #current
* type = http://clinfhir.com/CodeSystem/docTypes#samplequery "Sample queries"
* description = "Sample patient queries"

* content.attachment.url = "Patient?name=smith"
* content.attachment.title = "Patients with the name of 'Smith'"

* content[1].attachment.url = "Patient?_id=cPatient&_include=Patient:general-practitioner&_include=Patient:organization"
* content[1].attachment.title = "Returns patient and all referenced resources"

* content[2].attachment.url = "Patient?birthdate=2002"
* content[2].attachment.title = "Patients born in 2002"

* content[3].attachment.url = "Patient?birthdate=2002&gender=female"
* content[3].attachment.title = "Female patients born in 2002"


Instance:   providerQueries
InstanceOf: DocumentReference
Description: "Sample queries for IG companion"
Usage: #inline

* status = #current
* type = http://clinfhir.com/CodeSystem/docTypes#samplequeryDEP "Sample queries"
* description = "Sample Practitioner queries"

* content.attachment.url = "Practitioner?name=welby"
* content.attachment.title = "Find Practitioners with the name of 'Welby'"

* content[1].attachment.url = "PractitionerRole?organization=organization1&_include=PractitionerRole:practitioner&_include=PractitionerRole:location,&_include=PractitionerRole:organization"
* content[1].attachment.title = "Returns PractitionerRole resources where the organization has the id 'organization1', and referenced resources"
