Profile:        DEVSATObservation
Parent:         Observation
Id:             dev-satisfaction-observation
Title:          "Developer Satisfaction Observation Profile - Required Data"
Description:    "Profile for defining the required data for a Developer Satisfaction Observation."

* category = $observation-category#vital-signs
* code = $loinc#34786-4
* value[x] 1..1
* value[x] only Quantity
* value[x] ^comment = "Developers SHALL provide a computable representation of their satisfaction."
