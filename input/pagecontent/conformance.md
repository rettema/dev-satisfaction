
This page defines how CapabilityStatements are used and the expectations for mandatory and must support elements. A conformant system SHALL support the resources as profiled by this guide.

Note that the conformance verbs - SHALL, SHOULD, MAY - used in this guide are defined by the [FHIR Conformance Rules](http://hl7.org/fhir/conformance-rules.html).

### Conformance Overview
In order to claim conformance with this guide, a client and server implementation must adhere to the defined requirements in this guide.

<a name="conformance-artifacts"></a>
#### Conformance Artifacts
* FHIR Clients acting as a Developer Satisfaction Provider claiming conformance to this Implementation Guide must conform to the expectations described in the Capability Statement appropriate to the implemented FHIR version.  For FHIR R4 servers, this guide defines the [R4 Provider CapabilityStatement](CapabilityStatement-dev-satisfaction-provider-r4.html).
* FHIR Clients acting as a Developer Satisfaction Requestor claiming conformance to this Implementation Guide must conform to the expectations described in the Capability Statement appropriate to the implemented FHIR version.  For FHIR R4 servers, this guide defines the [R4 Requestor CapabilityStatement](CapabilityStatement-dev-satisfaction-requestor-r4.html).
* FHIR Servers acting as a Developer Satisfaction Responder claiming conformance to this Implementation Guide must conform to the expectations described in the Capability Statement appropriate to the implemented FHIR version.  For FHIR R4 servers, this guide defines the [R4 Responder CapabilityStatement](CapabilityStatement-dev-satisfaction-responder-r4.html).

<a name="profile-support"></a>
#### Profile Support
Profile Support refers to the support of the profiles defined in this guide in a system exposing FHIR resources. Specifically, a conformant server:
* SHALL communicate all profile data elements that are mandatory by that profile's StructureDefinition. 
* SHOULD declare conformance with the Developer Satisfaction Server Capability Statement by including its official URL in the server's `CapabilityStatement.instantiates` element: `http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/CapabilityStatement/dev-satisfaction-server-r4`.
* SHALL specify the full capability details from the CapabilityStatement it claims to implement, including
** declaring support for the Developer Satisfaction Observation Profile by including its official URL in the server's `CapabilityStatement.rest.resource.supportedProfile` element for the Observation  resource type: `http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/DEV-SAT-Observation`
** declaring support for the Developer Satisfaction Goal Profile by including its official URL in the server's `CapabilityStatement.rest.resource.supportedProfile` element for the Goal resource type: `http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/DEV-SAT-Goal`

<a name="must-support"></a>
#### Must-support
In this guide, no elements are currently marked as [Must Support](https://www.hl7.org/fhir/conformance-rules.html#mustSupport). In the future those elements that are flagged as MS will be enumerated below, with details on what must support means.
