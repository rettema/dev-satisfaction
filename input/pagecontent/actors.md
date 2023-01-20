
Satisfaction typically involves two actors:

Any FHIR application may support the Satisfaction Process. In this documentation:

### Server

**Server** refers to the FHIR application or applications acting as the satisfaction provider. This includes the responsibility of generating Satisfaction measures based on one or more Satisfaction profiled `Observation` resources.

Note that when generating Satisfaction measures, this guide does not prescribe the underlying satification algorithms the FHIR server implements. The expected server behavior can be a simple aggregation to a more complex scaling. This specification makes no recommendations towards the internal architecture of server implementations.

### Client

**Client** refers to the FHIR application or applications acting as the satisfaction subscriber. This includes the responsibilities of acting as a FHIR client (to create the Satisfaction profiled `Observation` resources) and receiving the generated Satisfaction measures.
