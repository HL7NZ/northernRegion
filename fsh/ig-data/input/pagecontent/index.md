### Background
This is the draft healthAlliance Implementation Guide.

Currently it covers all the FHIR design work being done at healthAlliance - in effect it describes the capabilities of the API's being developed to expose data from internal sources across healthAlliance. Currently, these are read-only. In the future, it is possible that further guides will be developed to cover specific sets of use cases with specific requirements particularly where update via API is supported.

Where there is overlap with the [NHI IG](http://igs.clinfhir.com/nhi/index.html), the 2 guides should be compatible if at all possible. For example the use of common extensions and identifier systems.

### Guide for use

#### General notes

In general terms, this guide is targetted towards those wishing to implement applications that access the data exposed through the healthAlliance RESTful APIs, and assume a familiarity with [FHIR](http://hl7.org/fhir/index.html). However, there are also aspects that will be of interest to Clinical Informaticians and Business Analysts.

* The [FHIR specification](http://hl7.org/fhir/index.html) is quite readible, and has many links to details of the spec. There are a number of guides on the front page that give a summary to different audiences

#### If you are a Clinician / BA:

The [Use Cases](usecases.htm) give examples of how the API's are intended to be used. The term 'API' (stands for Application Programming Interface) describes the technical details of how an external application (or 'client') can access the data being exposed.

Also check out the Logical models. These represent the alterations that made to the individual resource types to suit the needs of the project in a 'simple to understand format'. For example, new elements are added and others removed. FHIR Profiles represent the information in these models represented in the FHIR conformance artifacts and show the content of the actual data exchanged. (You can think of the Profile as being the technical representation of the Model)

The following models are defined in this guide:

* The [Patient](StructureDefinition-HaPatientLM.html) model are changes to the core [Patient](http://hl7.org/fhir/patient.html) resource. This represents the demographics information exposed by the API's - though note that some parts of this information is represented in referenced Organization and Practitioner profiles.
* The [Practitioner](StructureDefinition-HaPractitionerLM.html) profile represents someone who delivers healthcare - shuch as a hospital doctor, nurse or GP.
* The [Organization](StructureDefinition-HaOrganization.html) profile is curently used to represent a General Practice, though can be used more widely

The links above give significant detail of these models. The Snapshot table on each page is the best place to start (Note that model is also called a 'profile' in these pages - this is not the same as the FHIR profiles in this guide)

The [Design Notes](design.html) page will be of interest to clinicians interested in informatics. It describes the resource types that are available, and some of the background around the choice of resource - as there are often different ways to do something in FHIR, depending on the exact requirements.

#### If you are an Implementer:

* The [Artifact Index](artifacts.html) lists all FHIR artifacts in the guide, with links to details on each one. The most significant ones at present are
  * The [Patient](StructureDefinition-HaPatient.html) profile
* The [API](api.html) tab describes the different API's exposed by the solution. These are the actual RESTful queries that a client can make. There are 2 representations of the API:
  * The [Documentation](api.html) tab is hand written with examaples and clarifying statements.
  * The [API](capStmt.html) tab is directly generated from the [CapabilityStatement](CapabilityStatement-HaCapabilityStatement.html), which is the machine readible description of the API.
* The profiles that describe the structure of the resource instances returned by queries are foung on the [Artifact Index](artifacts.html#structures-resource-profiles) page (as are all the other FHIR artifacts). Like logical models, the snapshot tab is the most useful summary, but there is a lot of detail about each profile. Each profile page also contains links to examples of resource instances conformant to the profile.

There is also a ['companion'](companion.html) application under the support tab that will have a number of features aimed at implementers. This app is not part of the actual IG, but rather is intended to support implementers. Currently there is a single function that allows sample queries to be made against a test server with sample data in it, and then display the result in a number of formats. There are a number of sample queries that can be chosen, but they can be edited by the user as required.


### Tabs in this guide

* The [Table of contents](toc.html) lists all tabs and page headings. It is automatically generated by the tooling
* The [Use Cases](usecases.html) form the 'technical' requirements of the API from a business perspective. They are derived from more detailed Use cases and
* [Design Notes](design.html) are notes to implementers about how to implement the guide. In particular it has disgrams that show how the resources connect with each other in graphs to represent specific Use Cases 
* The [Artifact Index](artifacts.html) is also generated by the tooling and lists all the FHIR profiles, extensions and termibology defined by the guide. It also has the Logical Models which represent the information being expressed by the profiles in a more easy to understand manner.
* The [API](API.html) tab describes the different API's exposed by the solution. These are the actual RESTful queries that a client can make.
* The Support dropdown has a number of links - specifically a link to the FHIR specification (release 4) and a download of all the FHIR artifacts
* the [Development tab](development.html) contains links and documentaton used in the development of the guide. Once complete, these will be removed.

### 'Must Support'

Elements in FHIR profiles have the concept of ['must support'](http://hl7.org/fhir/profiling.html#mustsupport) which is indicated in both the models and the profiles with a red 'S' as the flag. The definition of what this means is vague in the spec, and is generally used to indicate elements of particular importance. In this guide, the expectation is that a client must understand what the meaning of these elements are, and have a strategy to deal with them - they cannot be ignored if present. Generally this will be making the user aware of their value. 

This is not the same as a required element, as 'must support' may still be absent. For example, if 'language' is marked as must support, then it should be displayed in the User Interface, but may not be present for every patient. 

### Security
This is to be added.