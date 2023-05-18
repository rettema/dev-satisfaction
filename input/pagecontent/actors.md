
Satisfaction involves the following actors:

Note, any FHIR application may support the Satisfaction Process.

<a name="server"></a>
### Servers

When generating Satisfaction measures, this guide does not prescribe the underlying satification algorithms the FHIR server implements. The expected server behavior can be a simple aggregation to a more complex scaling. This specification makes no recommendations towards the internal architecture of server implementations.

* [Developer Satisfaction Responder](ActorDefinition-dev-satisfaction-responder.html)

<a name="client"></a>
### Clients

These actors include the responsibilities of acting as a FHIR client (to create the Satisfaction profiled `Observation` resources) and receiving the generated Satisfaction measures.

* [Developer Satisfaction Provider](ActorDefinition-dev-satisfaction-provider.html)
* [Developer Satisfaction Requestor](ActorDefinition-dev-satisfaction-requestor.html)
