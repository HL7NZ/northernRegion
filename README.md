# Northern Region FHIR Implementation guide

An IG that represents FHIR interfaces to be supported across secondary care in the Northern region of New Zealand (supported by healthAlliance)



## Process steps

### Create profiles and other FHIR artifacts from logical models

This is a manual process, that is performed by creating the .fsh files (in the fsh folder) that correspond to the information in the logical models.

#### Profiles
These have the name profile-{name}.fsh and are stores directly in the fsh folder. One file per profile.

#### Extensions
These are located in the /fsh/extensions folder. In general, one file per extension, though multiple are allowed

#### Terminology
ValueSets and CodeSystems defined by this IG are placed in the /fsh/definitional folder. 

#### Examples
Located in the /fsh/examples folder


### Update Logical Models

To import the logical models into the IG, run the ./localScripts/makeLM.js file. This will download the models from the clinFHIR data server, sanitize them and copy them into the /input/models folder. This only needs to be done after there has been a change to any of the models. 

