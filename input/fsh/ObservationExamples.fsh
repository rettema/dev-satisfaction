Instance: Observation1
InstanceOf: dev-satisfaction-observation
Title: "Observation Example 1"
Description: "Observation Example 1"
Usage: #example
* meta.lastUpdated = "2023-01-19T09:48:01-04:00"
* meta.profile[+] = Canonical(dev-satisfaction-observation)
* identifier.system = "https://example.com/fhir/satisfactionidentifier"
* identifier.value = "99934500123"
* status = #final
* category[+].coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=].coding[=].code = #vital-signs
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #34786-4
* code.coding[=].display = "Mental health Note"
* effectiveDateTime = "2023-01-19T09:48:01-04:00"
* valueQuantity.value = 0.5
* interpretation[+].coding[+].system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation[=].coding[=].code = #L

Instance: Observation2
InstanceOf: dev-satisfaction-observation
Title: "Observation Example 2"
Description: "Observation Example 2"
Usage: #example
* meta.lastUpdated = "2023-05-18T14:50:33-04:00"
* meta.profile[+] = Canonical(dev-satisfaction-observation)
* identifier.system = "https://example.com/fhir/satisfactionidentifier"
* identifier.value = "99934500123"
* status = #final
* category[+].coding[+].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=].coding[=].code = #vital-signs
* code.coding[+].system = "http://loinc.org"
* code.coding[=].code = #34786-4
* code.coding[=].display = "Mental health Note"
* effectiveDateTime = "2023-05-18T14:50:33-04:00"
* valueQuantity.value = 0.9
* interpretation[+].coding[+].system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation[=].coding[=].code = #H
