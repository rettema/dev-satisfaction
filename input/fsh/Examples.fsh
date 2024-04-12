Instance: Goal1
InstanceOf: dev-satisfaction-goal
Title: "Goal Example 1"
Description: "Goal Example 1"
Usage: #example
* meta.lastUpdated = "2024-04-10T09:48:01-04:00"
* meta.profile[+] = Canonical(dev-satisfaction-goal)
* identifier.system = "https://example.com/fhir/satisfactionidentifier"
* identifier.value = "88834500123"
* lifecycleStatus = #active
* category[+].coding[+].system = "http://terminology.hl7.org/CodeSystem/goal-category"
* category[=].coding[=].code = #behavioral
* description.text = "Satisfaction Goal"
* subject.display = "Test Subject"
* startDate = "2024-01-01"
* target[+]
  * measure.coding[+].system = "http://loinc.org"
  * measure.coding[=].code = #34786-4
  * measure.coding[=].display = "Mental health Note"
  * detailQuantity.value = 1.0
  * dueDate = "2024-12-31"

Instance: Observation1
InstanceOf: dev-satisfaction-observation
Title: "Observation Example 1"
Description: "Observation Example 1"
Usage: #example
* meta.lastUpdated = "2024-04-10T09:48:01-04:00"
* meta.profile[+] = Canonical(dev-satisfaction-observation)
* identifier.system = "https://example.com/fhir/satisfactionidentifier"
* identifier.value = "99934500123"
* status = #final
* category[+].coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=].coding[=].code = #vital-signs
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #34786-4
* code.coding[=].display = "Mental health Note"
* effectiveDateTime = "2024-04-10T09:48:01-04:00"
* valueQuantity.value = 0.5
* interpretation[+].coding[+].system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation[=].coding[=].code = #L

Instance: Observation2
InstanceOf: dev-satisfaction-observation
Title: "Observation Example 2"
Description: "Observation Example 2"
Usage: #example
* meta.lastUpdated = "2024-04-10T14:50:33-04:00"
* meta.profile[+] = Canonical(dev-satisfaction-observation)
* identifier.system = "https://example.com/fhir/satisfactionidentifier"
* identifier.value = "99934500124"
* status = #final
* category[+].coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=].coding[=].code = #vital-signs
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #34786-4
* code.coding[=].display = "Mental health Note"
* effectiveDateTime = "2024-04-10T14:50:33-04:00"
* valueQuantity.value = 0.9
* interpretation[+].coding[+].system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation[=].coding[=].code = #H
