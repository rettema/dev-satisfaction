
<p>This Developer Satisfaction IG represents the potential use of the new and existing FHIR Testing conformance resources.</p>

### Requirements Tracibility Matrix (RTM)

#### [Developer Satisfaction Provider Requirements](Requirements-DEVSATRequirementsProvider.html)

| **Statement** | **TestPlan-Case-Run** | **TestScript** |
| ------------- | --------------------- | -------------- |
| capstmt-1 | [DEVSATTestPlanProvider](TestPlan-DEVSATTestPlanProvider.html) - 1 - 1 | [DEVSATCapabilitiesProviderjson](TestScript-DEVSATCapabilitiesProviderjson.html) |
|  | [DEVSATTestPlanProvider](TestPlan-DEVSATTestPlanProvider.html) - 1 - 2 | [DEVSATCapabilitiesProviderxml](TestScript-DEVSATCapabilitiesProviderxml.html) |
| capstmt-2 | [DEVSATTestPlanProvider](TestPlan-DEVSATTestPlanProvider.html) - 1 - 1 | [DEVSATCapabilitiesProviderjson](TestScript-DEVSATCapabilitiesProviderjson.html) |
|  | [DEVSATTestPlanProvider](TestPlan-DEVSATTestPlanProvider.html) - 1 - 2 | [DEVSATCapabilitiesProviderxml](TestScript-DEVSATCapabilitiesProviderxml.html) |
| create-goal-1 | n/a | n/a |
| create-goal-2 | n/a | n/a |
| create-observation-1 | [DEVSATTestPlanProvider](TestPlan-DEVSATTestPlanProvider.html) - 2 - 1 | n/a |
| create-observation-2 | [DEVSATTestPlanProvider](TestPlan-DEVSATTestPlanProvider.html) - 2 - 2 | n/a |
| **Coverage** | **66.67%** | **33.33%** |
{: .grid }

#### [Developer Satisfaction Requestor Requirements](Requirements-DEVSATRequirementsRequestor.html)

| **Statement** | **TestPlan-Case-Run** | **TestScript** |
| ------------- | --------------------- | -------------- |
| capstmt-1 | [DEVSATTestPlanRequestor](TestPlan-DEVSATTestPlanRequestor.html) - 1 - 1 | [DEVSATCapabilitiesRequestorjson](TestScript-DEVSATCapabilitiesRequestorjson.html) |
|  | [DEVSATTestPlanRequestor](TestPlan-DEVSATTestPlanRequestor.html) - 1 - 2 | [DEVSATCapabilitiesRequestorxml](TestScript-DEVSATCapabilitiesRequestorxml.html) |
| capstmt-2 | [DEVSATTestPlanRequestor](TestPlan-DEVSATTestPlanRequestor.html) - 1 - 1 | [DEVSATCapabilitiesRequestorjson](TestScript-DEVSATCapabilitiesRequestorjson.html) |
|  | [DEVSATTestPlanRequestor](TestPlan-DEVSATTestPlanRequestor.html) - 1 - 2 | [DEVSATCapabilitiesRequestorxml](TestScript-DEVSATCapabilitiesRequestorxml.html) |
| get-satisfaction-1 | [DEVSATTestPlanRequestor](TestPlan-DEVSATTestPlanRequestor.html) - 2 - 1 | [DEVSATObservationgetsatjson](TestScript-DEVSATObservationgetsatjson.html) |
|  | [DEVSATTestPlanRequestor](TestPlan-DEVSATTestPlanRequestor.html) - 2 - 2 | [DEVSATObservationgetsatxml](TestScript-DEVSATObservationgetsatxml.html) |
| **Coverage** | **100.00%** | **100.00%** |
{: .grid }

#### [Developer Satisfaction Responder Requirements](Requirements-DEVSATRequirementsResponder.html)

| **Statement** | **TestPlan-Case-Run** | **TestScript** |
| ------------- | --------------------- | -------------- |
| capstmt-1 | [DEVSATTestPlanResponder](TestPlan-DEVSATTestPlanResponder.html) - 1 - 1 | [DEVSATCapabilitiesResponderjson](TestScript-DEVSATCapabilitiesResponderjson.html) |
|  | [DEVSATTestPlanResponder](TestPlan-DEVSATTestPlanResponder.html) - 1 - 2 | [DEVSATCapabilitiesResponderxml](TestScript-DEVSATCapabilitiesResponderxml.html) |
| capstmt-2 | [DEVSATTestPlanResponder](TestPlan-DEVSATTestPlanResponder.html) - 1 - 1 | [DEVSATCapabilitiesResponderjson](TestScript-DEVSATCapabilitiesResponderjson.html) |
|  | [DEVSATTestPlanResponder](TestPlan-DEVSATTestPlanResponder.html) - 1 - 2 | [DEVSATCapabilitiesResponderxml](TestScript-DEVSATCapabilitiesResponderxml.html) |
| read-devsat-goal-1 | [DEVSATTestPlanResponder](TestPlan-DEVSATTestPlanResponder.html) - 2 - 1 | [DEVSATGoalreadvalidatejson](TestScript-DEVSATGoalreadvalidatejson.html) |
|  | [DEVSATTestPlanResponder](TestPlan-DEVSATTestPlanResponder.html) - 2 - 2 | [DEVSATGoalreadvalidatexml](TestScript-DEVSATGoalreadvalidatexml.html) |
| read-devsat-observation-1 | [DEVSATTestPlanResponder](TestPlan-DEVSATTestPlanResponder.html) - 3 - 1 | [DEVSATObservationreadvalidatejson](TestScript-DEVSATObservationreadvalidatejson.html) |
|  | [DEVSATTestPlanResponder](TestPlan-DEVSATTestPlanResponder.html) - 3 - 2 | [DEVSATObservationreadvalidatexml](TestScript-DEVSATObservationreadvalidatexml.html) |
| get-satisfaction-1 | [DEVSATTestPlanResponder](TestPlan-DEVSATTestPlanResponder.html) - 4 - 1 | [DEVSATObservationgetsatjson](TestScript-DEVSATObservationgetsatjson.html) |
|  | [DEVSATTestPlanResponder](TestPlan-DEVSATTestPlanResponder.html) - 4 - 2 | [DEVSATObservationgetsatxml](TestScript-DEVSATObservationgetsatxml.html) |
| **Coverage** | **100.00%** | **100.00%** |
{: .grid }

### FHIR Testing Conformance Resources

#### Existing (R4)

* <strong>[TestScript](http://hl7.org/fhir/R4/testscript.html)</strong>  A structured set of tests against a FHIR server or client implementation

#### New (R5)

* <strong>[ActorDefinition](http://hl7.org/fhir/R5/actordefinition.html)</strong>  Describes an actor - a human or an application that plays a role in data exchange
* <strong>[Requirements](http://hl7.org/fhir/R5/requirements.html)</strong>  A set of requirements - a list of features or behaviors of designed systems that are necessary to achieve organizational or regulatory goals
* <strong>[TestPlan](http://hl7.org/fhir/R5/testplan.html)</strong>  A plan for executing testing on an artifact or specifications
