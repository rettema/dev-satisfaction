
This page defines how CapabilityStatements are used and the expectations for mandatory and must support elements. A conformant system SHALL support the resources as profiled by this guide.

Note that the conformance verbs - SHALL, SHOULD, MAY - used in this guide are defined by the [FHIR Conformance Rules](http://hl7.org/fhir/conformance-rules.html).

### Conformance in FHIR R4
In order to claim conformance with this guide, a client and server implementation must adhere to the defined [Requirements](artifacts.html#requirements-formal-requirements).

<a name="conformance-artifacts"></a>
#### Conformance Artifacts
FHIR Servers claiming conformance to this Implementation Guide must conform to the expectations described in the Capability Statement appropriate to the implemented FHIR version.  For FHIR R4 servers, this guide defines the [R4 Server CapabilityStatement](CapabilityStatement-dev-satisfaction-server-r4.html).

<a name="profile-support"></a>
##### Profile Support
Profile Support refers to the support of the profiles defined in this guide in a system exposing FHIR resources. Specifically, a conformant server:
* SHALL communicate all profile data elements that are mandatory by that profile's StructureDefinition. 
* SHOULD declare conformance with the Developer Satisfaction Server Capability Statement by including its official URL in the server's `CapabilityStatement.instantiates` element: `http://hl7.org/fhir/uv/dev-satisfaction/CapabilityStatement/dev-satisfaction-server-r4`.
* SHALL specify the full capability details from the CapabilityStatement it claims to implement, including declaring support for the Developer Satisfaction Profile by including its official URL in the server's `CapabilityStatement.rest.resource.supportedProfile` element for the Observation resource type: `http://hl7.org/fhir/uv/dev-satisfaction/StructureDefinition/DEV-SAT-Observation`

<a name="must-support"></a>
#### Must-support
In this guide, no elements are currently marked as [Must Support](https://www.hl7.org/fhir/conformance-rules.html#mustSupport). In the future if elements that are flagged as MS will be enumerated below, with details on what support means.
