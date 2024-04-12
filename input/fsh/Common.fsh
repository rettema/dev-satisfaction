Alias: $loinc = http://loinc.org
Alias: $goal-category = http://terminology.hl7.org/CodeSystem/goal-category
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category

RuleSet: ResourceJurisdiction
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001

RuleSet: ResourceCommonR4
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* fhirVersion = #4.0.1

// Operation common definitions
RuleSet:       OperationCommon
* jurisdiction        = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* status              = #active
* date                = "2024-04-10"
* publisher           = "AEGIS.net, Inc."
// * contact[0].telecom[0].system = #url
// * contact[0].telecom[0].value  = "https://hl7.org/Special/committees/fiwg/index.cfm"
* affectsState        = false
* version             = "0.1.0"
* kind                = #operation
