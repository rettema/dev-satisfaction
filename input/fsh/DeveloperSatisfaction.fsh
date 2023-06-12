Profile:        DEVSATGoal
Parent:         Goal
Id:             dev-satisfaction-goal
Title:          "Developer Satisfaction Goal Profile - Required Data"
Description:    "Profile for defining the required data for a Developer Satisfaction Goal."

* category = $goal-category#behavioral
* start[x] only date
* target.measure = $loinc#34786-4
* target.detail[x] only Quantity
* target.due[x] only date

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
