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
<h3>ValueSet by path</h3>
<table class='table table-bordered table-condensed'>
<tr><th>Path</th><th>ValueSet</th><th>Notes</th></tr>
<tr>
<td>Patient.contact.relationship</td>
<td>http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype</td>
<td>Not defined here</td>
</tr>
<tr>
<td>Extension.valueCoding.system</td>
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