### ValueSets

<div>
Valuesets are selectors of concepts (represented as codes) that are used to indicate preferred values for specific elements in a particular context. The codes are actually defined in a Code System. The profile is used to 'bind' the ValueSet to an element.

A ValueSet can refer to concepts from multiple CodeSystems, and any concept can be references by many ValueSets. 

Ideally (and the case in this guide) the url of the valueSet will 'resolve' - entering it into a browser or REST client will return the ValueSet. 
A common pattern is to have a ValueSet that 'includes' all the codes from a code system.
</div>

<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Url</th><th>CodeSystem Urls</th></tr>
<tr><td width='20%'>Other values for the ContactPoint system</td><td>Other values for the ContactPoint system</td><td><a href='ValueSet-contact-point-other.html'>https://standards.digital.health.nz/fhir/ValueSet/contact-point-other-code</a></td><td><div><a href='CodeSystem-contact-point-other.html'>https://standards.digital.health.nz/ns/contact-point-other-code</a></div></td></tr>
</table>
<br/><br/>
### ValueSet by path
<em>Coded bindings - even for terminology defined elsewhere</em>
<table class='table table-bordered table-condensed'>
<tr><th>Path</th><th>ValueSet</th><th>Notes</th></tr>
<tr>
<td>Location.language</td>
<td>http://hl7.org/fhir/ValueSet/languages</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Location.identifier.use</td>
<td>http://hl7.org/fhir/ValueSet/identifier-use|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Location.identifier.type</td>
<td>http://hl7.org/fhir/ValueSet/identifier-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Location.identifier.use</td>
<td>http://hl7.org/fhir/ValueSet/identifier-use|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Location.identifier.type</td>
<td>http://hl7.org/fhir/ValueSet/identifier-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Location.identifier.use</td>
<td>http://hl7.org/fhir/ValueSet/identifier-use|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Location.identifier.type</td>
<td>http://hl7.org/fhir/ValueSet/identifier-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Location.hoursOfOperation.daysOfWeek</td>
<td>http://hl7.org/fhir/ValueSet/days-of-week|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Organization.language</td>
<td>http://hl7.org/fhir/ValueSet/languages</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Organization.identifier.use</td>
<td>http://hl7.org/fhir/ValueSet/identifier-use|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Organization.identifier.type</td>
<td>http://hl7.org/fhir/ValueSet/identifier-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Organization.type</td>
<td>http://hl7.org/fhir/ValueSet/organization-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Organization.contact.purpose</td>
<td>http://hl7.org/fhir/ValueSet/contactentity-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.identifier.use</td>
<td>http://hl7.org/fhir/ValueSet/identifier-use|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.identifier.type</td>
<td>http://hl7.org/fhir/ValueSet/identifier-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.identifier.use</td>
<td>http://hl7.org/fhir/ValueSet/identifier-use|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.identifier.type</td>
<td>http://hl7.org/fhir/ValueSet/identifier-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.name.use</td>
<td>http://hl7.org/fhir/ValueSet/name-use|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.telecom.system</td>
<td>http://hl7.org/fhir/ValueSet/contact-point-system|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.telecom.use</td>
<td>http://hl7.org/fhir/ValueSet/contact-point-use|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.gender</td>
<td>http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.address.use</td>
<td>http://hl7.org/fhir/ValueSet/address-use|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.address.type</td>
<td>http://hl7.org/fhir/ValueSet/address-type|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.maritalStatus</td>
<td>http://hl7.org/fhir/ValueSet/marital-status</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.contact.relationship</td>
<td>http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.contact.gender</td>
<td>http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.communication.language</td>
<td>http://hl7.org/fhir/ValueSet/languages</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.generalPractitioner.type</td>
<td>http://hl7.org/fhir/ValueSet/resource-types</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Patient.link.type</td>
<td>http://hl7.org/fhir/ValueSet/link-type|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Practitioner.language</td>
<td>http://hl7.org/fhir/ValueSet/languages</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Practitioner.identifier.use</td>
<td>http://hl7.org/fhir/ValueSet/identifier-use|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Practitioner.identifier.type</td>
<td>http://hl7.org/fhir/ValueSet/identifier-type</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Practitioner.gender</td>
<td>http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Practitioner.qualification.code</td>
<td>http://terminology.hl7.org/ValueSet/v2-2.7-0360</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Practitioner.communication</td>
<td>http://hl7.org/fhir/ValueSet/languages</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PractitionerRole.language</td>
<td>http://hl7.org/fhir/ValueSet/languages</td>
<td>Not defined here</td>
</tr>
<tr>
<td>PractitionerRole.availableTime.daysOfWeek</td>
<td>http://hl7.org/fhir/ValueSet/days-of-week|4.0.1</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Extension.value[x].system</td>
<td>https://standards.digital.health.nz/fhir/ValueSet/contact-point-other</td>
<td>Not defined here</td>
</tr>
</table>
<br/><br/>
### CodeSystems

These are codesystems that have been defined by this guide. They define specific concepts that are included in ValueSets. It is preferabe to use an international code systm such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem has a globally unique url that is used to unambiguously identiy it. The url generally refers to a describtion of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>CodeSystem Url</th></tr>
<tr><td width='20%'>Other values for the ContactPoint system</td><td>Other values for the ContactPoint system</td><td><a href='CodeSystem-contact-point-other.html'>https://standards.digital.health.nz/ns/contact-point-other-code</a></td></tr>