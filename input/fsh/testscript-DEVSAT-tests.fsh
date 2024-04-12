Instance: DEVSATGoaldynamicreadvalidatejson
InstanceOf: TestScript
Title: "HL7 FHIR R4 TestScript Dynamic Read Validate DEVSAT-Goal JSON"
Usage: #definition
* insert DEVSAT-profile-dynamic-read-validate-test(Goal, DEVSATGoaldynamicreadvalidatejson, 2024-04-10, #json, DEVSATGoalProfile, "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-goal", DEVSAT-Goal)

Instance: DEVSATGoaldynamicreadvalidatexml
InstanceOf: TestScript
Title: "HL7 FHIR R4 TestScript Dynamic Read Validate DEVSAT-Goal XML"
Usage: #definition
* insert DEVSAT-profile-dynamic-read-validate-test(Goal, DEVSATGoaldynamicreadvalidatexml, 2024-04-10, #xml, DEVSATGoalProfile, "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-goal", DEVSAT-Goal)

Instance: DEVSATGoalreadvalidatejson
InstanceOf: TestScript
Title: "HL7 FHIR R4 TestScript Read Validate DEVSAT-Goal JSON"
Usage: #definition
* insert DEVSAT-profile-read-validate-test(Goal, Goal1, DEVSATGoalreadvalidatejson, 2024-04-10, #json, DEVSATGoalProfile, "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-goal", DEVSAT-Goal)

Instance: DEVSATGoalreadvalidatexml
InstanceOf: TestScript
Title: "HL7 FHIR R4 TestScript Read Validate DEVSAT-Goal XML"
Usage: #definition
* insert DEVSAT-profile-read-validate-test(Goal, Goal1, DEVSATGoalreadvalidatexml, 2024-04-10, #xml, DEVSATGoalProfile, "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-goal", DEVSAT-Goal)

Instance: DEVSATObservationdynamicreadvalidatejson
InstanceOf: TestScript
Title: "HL7 FHIR R4 TestScript Dynamic Read Validate DEVSAT-Observation JSON"
Usage: #definition
* insert DEVSAT-profile-dynamic-read-validate-test(Observation, DEVSATObservationdynamicreadvalidatejson, 2024-04-10, #json, DEVSATObservationProfile, "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-observation", DEVSAT-Observation)

Instance: DEVSATObservationdynamicreadvalidatexml
InstanceOf: TestScript
Title: "HL7 FHIR R4 TestScript Dynamic Read Validate DEVSAT-Observation XML"
Usage: #definition
* insert DEVSAT-profile-dynamic-read-validate-test(Observation, DEVSATObservationdynamicreadvalidatexml, 2024-04-10, #xml, DEVSATObservationProfile, "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-observation", DEVSAT-Observation)

Instance: DEVSATObservationreadvalidatejson
InstanceOf: TestScript
Title: "HL7 FHIR R4 TestScript Read Validate DEVSAT-Observation JSON"
Usage: #definition
* insert DEVSAT-profile-read-validate-test(Observation, Observation1, DEVSATObservationreadvalidatejson, 2024-04-10, #json, DEVSATObservationProfile, "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-observation", DEVSAT-Observation)

Instance: DEVSATObservationreadvalidatexml
InstanceOf: TestScript
Title: "HL7 FHIR R4 TestScript Read Validate DEVSAT-Observation XML"
Usage: #definition
* insert DEVSAT-profile-read-validate-test(Observation, Observation1, DEVSATObservationreadvalidatexml, 2024-04-10, #xml, DEVSATObservationProfile, "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/dev-satisfaction-observation", DEVSAT-Observation)

Instance: DEVSATObservationgetsatjson
InstanceOf: TestScript
Title: "HL7 FHIR R4 TestScript Observation $get-satisfaction JSON"
Usage: #definition
* insert TSMetadata(DEVSATObservationgetsatjson, http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction, 2024-04-10, "Example TestScript to test the Developer Satisfaction Observation $get-satisfaction operation")
* extension[+].url = "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/testing-scope"
* extension[=].valueCanonical = "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/OperationDefinition/dev-satisfaction-get-satisfaction"
* insert TSOrigin(1)
* insert TSDestination(1)
* insert TSTest(GetSatisfactionNoArgs, "Test Developer Satisfaction $get-satisfaction operation with no args on destination server and assert successful returned satisfaction value")
* insert TSTestOperationGlobal(#process-message, #json, 1, 1, "$get-satisfaction operation with no args")
* test[=].action[=].operation.params = "/$get-satisfaction"
* insert TSTestAssertWithProp("Confirm that the returned response code is 200 OK.", false, #response, responseCode, "200")
* insert TSTestAssertWithProp("Confirm that the returned response payload is a Parameters resource.", false, #response, resource, #Parameters)
* insert TSTestAssert("Confirm that the returned Parameters contains a measurement parameter.", false, #response)
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'measurement').exists()"
* insert TSTestAssert("Confirm that the returned Parameters contains an interpretation parameter.", false, #response)
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'interpretation').exists()"

Instance: DEVSATObservationgetsatxml
InstanceOf: TestScript
Title: "HL7 FHIR R4 TestScript Observation $get-satisfaction XML"
Usage: #definition
* insert TSMetadata(DEVSATObservationgetsatxml, http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction, 2024-04-10, "Example TestScript to test the Developer Satisfaction Observation $get-satisfaction operation")
* extension[+].url = "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/StructureDefinition/testing-scope"
* extension[=].valueCanonical = "http://touchstone.aegis.net/touchstone/fhir/dev-satisfaction/OperationDefinition/dev-satisfaction-get-satisfaction"
* insert TSOrigin(1)
* insert TSDestination(1)
* insert TSTest(GetSatisfactionNoArgs, "Test Developer Satisfaction $get-satisfaction operation with no args on destination server and assert successful returned satisfaction value")
* insert TSTestOperationGlobal(#process-message, #xml, 1, 1, "$get-satisfaction operation with no args")
* test[=].action[=].operation.params = "/$get-satisfaction"
* insert TSTestAssertWithProp("Confirm that the returned response code is 200 OK.", false, #response, responseCode, "200")
* insert TSTestAssertWithProp("Confirm that the returned response payload is a Parameters resource.", false, #response, resource, #Parameters)
* insert TSTestAssert("Confirm that the returned Parameters contains a measurement parameter.", false, #response)
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'measurement').exists()"
* insert TSTestAssert("Confirm that the returned Parameters contains an interpretation parameter.", false, #response)
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'interpretation').exists()"
