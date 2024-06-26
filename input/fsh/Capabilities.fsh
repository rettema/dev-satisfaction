Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: CapabilityCommon
* status              = #active
* date                = "2024-04-10"
* publisher           = "AEGIS.net, Inc."
// * contact[0].telecom[0].system = #url
// * contact[0].telecom[0].value  = "https://hl7.org/Special/committees/fiwg/index.cfm"
* kind                = #requirements
* format[0]           = #xml
* format[1]           = #json

RuleSet: SupportResourceNoExp (resource)
* rest.resource[+].type = #{resource}

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfileNoExp (profile)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteractionNoExp (interaction)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParamNoExp (name, canonical, type)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

RuleSet: SupportOperationNoExp (name, canonical)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].operation[+].name = "{name}"
* rest.resource[=].operation[=].definition = "{canonical}"

RuleSet: SupportOperation (name, canonical, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].operation[+].name = "{name}"
* rest.resource[=].operation[=].definition = "{canonical}"
* rest.resource[=].operation[=].extension[0].url = $exp
* rest.resource[=].operation[=].extension[0].valueCode = {expectation}

RuleSet: GlobalOperationNoExp (name, canonical)
// This rule set defines a global operation.
* rest.operation[+].name = "{name}"
* rest.operation[=].definition = "{canonical}"

Instance:      CapabilitySatisfactionProviderR4
InstanceOf:    CapabilityStatement
Usage:         #definition
Title:         "R4 Developer Satisfaction Provider Capability Statement"
Description:   "CapabilityStatement describing the minimal required capabilities of a FHIR Client supporting the Developer Satisfaction Provider functionality."
* insert ResourceCommonR4
* id            = "dev-satisfaction-provider-r4"
* name          = "CapabilitySatisfactionProviderR4"
* url           = "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/CapabilityStatement/dev-satisfaction-provider-r4"
* description   = "CapabilityStatement describing the required and optional capabilities of a FHIR Client supporting the Developer Satisfaction Provider functionality."
* insert CapabilityCommon

* rest[+].mode  = #client
* rest[=].mode.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* insert SupportResource(Goal, #SHALL)
* insert SupportProfile(http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-goal, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#update, #SHOULD)
* insert SupportInteraction(#delete, #SHOULD)

* insert SupportResource(Observation, #SHALL)
* insert SupportProfile(http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-observation, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#update, #SHOULD)
* insert SupportInteraction(#delete, #SHOULD)

Instance:      CapabilitySatisfactionRequestorR4
InstanceOf:    CapabilityStatement
Usage:         #definition
Title:         "R4 Developer Satisfaction Requestor Capability Statement"
Description:   "CapabilityStatement describing the minimal required capabilities of a FHIR Client supporting the Developer Satisfaction Requestor functionality."
* insert ResourceCommonR4
* id            = "dev-satisfaction-requestor-r4"
* name          = "CapabilitySatisfactionRequestorR4"
* url           = "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/CapabilityStatement/dev-satisfaction-requestor-r4"
* description   = "CapabilityStatement describing the required and optional capabilities of a FHIR Client supporting the Developer Satisfaction Requestor functionality."
* insert CapabilityCommon

* rest[+].mode  = #client
* rest[=].mode.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* insert GlobalOperationNoExp(get-satisfaction, http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/OperationDefinition/dev-satisfaction-get-satisfaction)

Instance:      CapabilitySatisfactionResponderR4
InstanceOf:    CapabilityStatement
Usage:         #definition
Title:         "R4 Developer Satisfaction Responder Capability Statement"
Description:   "CapabilityStatement describing the minimal required capabilities of a FHIR Server supporting the Developer Satisfaction Responder functionality."
* insert ResourceCommonR4
* id            = "dev-satisfaction-responder-r4"
* name          = "CapabilitySatisfactionResponderR4"
* url           = "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/CapabilityStatement/dev-satisfaction-responder-r4"
* description   = "CapabilityStatement describing the required and optional capabilities of a FHIR Server supporting the Developer Satisfaction Responder functionality."
* insert CapabilityCommon

* rest[+].mode  = #server
* rest[=].mode.extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL

* insert SupportResource(Goal, #SHALL)
* insert SupportProfile(http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-goal, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#update, #SHOULD)
* insert SupportInteraction(#delete, #SHOULD)

* insert SupportResource(Observation, #SHALL)
* insert SupportProfile(http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-observation, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#create, #SHALL)
* insert SupportInteraction(#update, #SHOULD)
* insert SupportInteraction(#delete, #SHOULD)

* insert GlobalOperationNoExp(get-satisfaction, http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/OperationDefinition/dev-satisfaction-get-satisfaction)
