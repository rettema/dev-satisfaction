Alias: $loinc = http://loinc.org
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category

RuleSet: ResourceJurisdiction
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001

RuleSet: ResourceCommonR5
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* fhirVersion = #5.0.0

// Operation common definitions
RuleSet:       OperationCommon
* jurisdiction        = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* status              = #active
* date                = "2023-05-17"
* publisher           = "AEGIS.net, Inc."
// * contact[0].telecom[0].system = #url
// * contact[0].telecom[0].value  = "https://hl7.org/Special/committees/fiwg/index.cfm"
* affectsState        = false
* version             = "0.1.0"
* kind                = #operation
* extension[0].url          = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[0].valueInteger = 0
* extension[1].url          = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[1].valueCode    = #trial-use
