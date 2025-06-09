# Northern Region FHIR Implementation Guide

An Implementation Guide (IG) that represents FHIR interfaces to be supported across secondary care in the Northern region of New Zealand (supported by healthAlliance). It has a dependancy on the [NZBase IG](https://github.com/HL7NZ/nzbase/tree/master). 

## Folders

Note that this is the same folder structure used for all IG's.

### input 

Contains the files that comprise the 'source' files for the actual IG. This folder contains the FHIR conformance resources that will be of interest to implementerrs. Significant sub folders are

* input/capabilities - the CapabilityStatement resource that describes the API
* input/examples - any examples that have been manually created
* input/extensions - StructureDefinition files for extensions that have been created by this IG. Extensions that are created by other IG's will be found in the repo for that IG - most commonly NZ Base
* input/models - the Logical models created by the clinFHIR logical modeller. These are used to confirm the data model and do not rerpresent the 'on the wire' representation of the FHIR rersources. They are represented as StructureDefiniton resources
* input/profiles - StructureDefinition files for the profiles that have been defined by this IG. The 'snapshot' element contains the complete description of the elements in the profile, whereas the differential element represents the difference form the 'source' profile - generally NZ Base
* resources - other artifacts that are not categorized
* vocabulary - ValueSets and CodeSystems defined by the IG


### fsh

Contains the 'design' files (shorthand documents) for the IG. This is not generally needed by implementers (though may be of interest as the FHIR ShortHand (FSH) format is easier to read than StructureDefinition rersources). The underlying tooling (Sushi and the IG Publisher) generates the contents of the /input folder described above.




## Design process steps

This is the process by which the FHIR artifcats are created. This is for reference only, and not required to use the IG. It is possible for an impementer to generate the IG from the data in this repo as described in the [sushi documentation](http://hl7.org/fhir/uv/shorthand/2020May/sushi.html)

### Gather requirements
Generate the Logical models that represent the data requirements.

### Create profiles and other FHIR artifacts from logical models

This is a manual process, that is performed by creating the .fsh files (in the fsh folder) that correspond to the information in the logical models.

#### Profiles
These have the name profile-{name}.fsh and are stores directly in the fsh folder. One file per profile.

#### Extensions
These are located in the /fsh/extensions folder. In general, one file per extension, though multiple are allowed

#### Terminology
ValueSets and CodeSystems defined by this IG are placed in the /fsh/definitional folder. 

#### Examples
Located in the /fsh/examples folder.


### Update Logical Models

To import the logical models into the IG, run the ./localScripts/makeLM.js file. This will download the models from the clinFHIR data server, sanitize them and copy them into the /input/models folder. This only needs to be done after there has been a change to any of the models. 

