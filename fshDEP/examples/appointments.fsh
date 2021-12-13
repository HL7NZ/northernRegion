Instance:   appt1
InstanceOf: Appointment
//BaseType: Appointment
Description: "FSA in orthopedics"
Usage: #example

* status = #fulfilled
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>FSA visit for hip pain</div>"
* text.status = #additional


//the patient
* participant.actor = Reference(apptPatient1)
* participant.actor.display = "Andy Appointment"

* participant.status = #tentative

//the healthcare service 
* participant[1].actor = Reference(hsOrthopedics)
* participant[1].actor.display = "Orthopedics Outpatients Clinic"
* participant[1].status = #tentative

//the physical location for this appt
* participant[2].actor = Reference(locOrthopedics)
* participant[2].actor.display = "Outpatients Clinic"
* participant[2].status = #tentative


Instance:   apptPatient1
InstanceOf: NrPatient
//BaseType: Patient
Description: "Appointment patient"
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Andy Appointment</div>"
* text.status = #additional

* gender = #male
* birthDate = "1989-01-01"
* name.text = "Andy Appointments"
* name.family = "Appointment"
* name.given = "Andy"

Instance:   hsOrthopedics
InstanceOf: HealthcareService
//BaseType: Appointment
Description: "Orthopedics outpatients service"
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Orthopedics outpatients service</div>"
* text.status = #additional

//the Organization that provides the service
* providedBy = Reference(cmdhb)
* providedBy.display = "Counties Manukau DHB"

//the location/s from where the service is provided
* location = Reference(locOrthopedics)

* name = "Orthopedics outpatients"

Instance:   locOrthopedics
InstanceOf: Location
//BaseType: Location
Description: "Orthopedic Outpatients"
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Orthopedics outpatients clinic at MMH</div>"
* text.status = #additional

* managingOrganization = Reference(cmdhb)

* name = "Orthopedics outpatients clinic"
* address.text = "23 thule st"