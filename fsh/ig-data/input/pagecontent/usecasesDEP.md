
This page describes the key technical use cases most directly influencing the API.

* Each Use case has a brief description and a graph that represents the resources needed to represent that Use case.
* Each resource has a link to the model that represents it. Currently this is in the editing application (clinFHIR) to allow changes. Ultimately each model will be incorporated in the IG
* The intention is that each resource type (eg Patient) will have a single model for all healthAlliance API's that is common across all Use cases (and implementation Guides). This may change if there are Use cases that have significantly different requirements. (There is a counter argument that each profile should be specific to a single use case - though that seems unweildy at the moment)

### Demographics: Find patient details by NHI
As a clinician, I wish to look up patient demographics using the NHI. If more than one match is returned, that will be an error.

    [host]/Patient?identifier={NHI}


### Demographics: Find patient based on patient attributes
As a clinician, I wish to look up patient demographics using their name, gender and date of birth. I will select the correct patient from the list returned.

    [host]/Patient?name={name}&birthDate={date of birth}&gender={gender}


### Demographics: Find patient encounter
As a clincian, I wish to lookup details of the currrent inpatient encounter.

    [host]/Encounter?patient.identifier={NHI}&_sort=-date&date=gt{3 months ago}

_notes: Assume that the query is being serviced by the PAS, so will only include in-patient encounters. All encounters in the past 3 months  are returned, in date descending order_


### Demographics: Discharge summary

As a clinician producing a discharge summary for my patient in the SMT application I want to ensure that the discharge summary is populated with the latest patient demographic details so that I have confidence in the accuracy of data as this is shared with the patient and their care team e.g. Primary Care, Specialists. 

> should this level of detail about the relationships for complex use cases be here, or in some other location? I wonder if these use cases focus on the retrieval of demographics only (unless we do wish to support encounter based queries as well...)


### Demographics: Creating a letter

>does this add anything at this level?

As a system administrator of the digital post solution I want the application to be able to consume patient demographic details in real time via an API so we are confident that our letters are addressed correctly and that the documents are sent to the correct patient email address As a system administrator of the digital post solution I want the application to be able to consume patient demographic details in real time via an API so we are confident that our letters are addressed correctly and that the documents are sent to the correct patient email address 

### Demographics: Document Management System

>This seems overly detailed

As a document publisher, I want the document management system to match and override my document’s patient details with values from PAS so that I can be assured that my document bears the latest patient information before it is transmitted to target recipients. 

As a publisher of a document to be emailed or posted to a patient, I want to document management system to match and override my document recipient’s email address or postal address with values from PAS so that I can be assured that my document will be sent to the right email/ postal address.

As a publisher of a document to be sent to a patient’s GP via HealthLink, I want to document management system to look-up the patient GP’s EDI information from PAS so that it can be compared against the GP’s EDI in HPIAE and rejected in case of mismatch.  Rejection will then trigger a subsequent user action to correct the EDI information in PAS.

As a publisher of a document to be sent to a patient’s GP via HealthLink, I want to document management system to look-up the patient GP’s EDI information from PAS… 
* So that it can be used to search the GP information in HPIAE and document rejected if EDI is not found.  Rejection will then trigger a subsequent user action to correct the EDI information in PAS.
* So that latest GP/ Practice details can be retrieved from HPIAE and used for document distribution 

### Demographics: Patient Lookups in National Enrolment System

### Lab: Lookup COVID result
As a clinician, I want to know a patient’s COVID-19 PCR (NP and/or throat) swab result so that I can advise patient around further management.

    [host]/Observation?patient.identifier={NHI}&code:in={URL of ValueSet of codes}
    [host]/Observation?patient.identifier={NHI}&code={Covid code 1},{Covid code 2},{Covid code 3}


### Lab: Lookup recent results

As a hospital physician, I want to be able to view the results from a set of general blood tests (FBC, U+Es, CRP, LFTs) and COVID-19 swabs for patients admitted to hospital

_Assuming all results have a corresponding DiagnosticReport. Retrieve all panels (with test results) within the last month_

    [host]/DiagnosticReport?patient.identifier={NHI}&date=gt{date}&_include=DiagnosticReport:patient

_Assuming all results have a corresponding DiagnosticReport. Retrieve specified panels within the last month_

    [host]/DiagnosticReport?patient.identifier={NHI}&date=gt{1 month ago}&_include=DiagnosticReport:patient&code={panelcode 1},{panelcode 2}

_Retrieve the results (Observations) directly. Retrieve all tests within the last month. Client to sort_

    [host]/Observation?patient.identifier={NHI}&date=gt{date}

_Retrieve the results (Observations) directly. Retrieve specific tests within the last month. Client to sort_

    [host]/Observation?patient.identifier={NHI}&date=gt{date}&code={code1},{code2},{code3}