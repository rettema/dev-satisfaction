Instance: DEVSATObservationdynamicreadvalidatejson
InstanceOf: TestScript
Usage: #definition
* insert DEVSAT-profile-dynamic-read-validate-test(Observation, DEVSATObservationdynamicreadvalidatejson, 2023-05-17, #json, DEVSATObservationProfile, "http://hl7.org/fhir/uv/dev-satisfaction/StructureDefinition/dev-satisfaction-observation", DEVSAT-Observation)

Instance: DEVSATObservationdynamicreadvalidatexml
InstanceOf: TestScript
Usage: #definition
* insert DEVSAT-profile-dynamic-read-validate-test(Observation, DEVSATObservationdynamicreadvalidatexml, 2023-05-17, #xml, DEVSATObservationProfile, "http://hl7.org/fhir/uv/dev-satisfaction/StructureDefinition/dev-satisfaction-observation", DEVSAT-Observation)

Instance: DEVSATObservationreadvalidatejson
InstanceOf: TestScript
Usage: #definition
* insert DEVSAT-profile-read-validate-test(Observation, Observation1, DEVSATObservationreadvalidatejson, 2023-05-17, #json, DEVSATObservationProfile, "http://hl7.org/fhir/uv/dev-satisfaction/StructureDefinition/dev-satisfaction-observation", DEVSAT-Observation)

Instance: DEVSATObservationreadvalidatexml
InstanceOf: TestScript
Usage: #definition
* insert DEVSAT-profile-read-validate-test(Observation, Observation1, DEVSATObservationreadvalidatexml, 2023-05-17, #xml, DEVSATObservationProfile, "http://hl7.org/fhir/uv/dev-satisfaction/StructureDefinition/dev-satisfaction-observation", DEVSAT-Observation)

Instance: DEVSATObservationgetsatjson
InstanceOf: TestScript
Usage: #definition
* insert TSMetadata(DEVSATObservationgetsatjson, http://hl7.org/fhir/uv/dev-satisfaction, 2023-05-17, "HL7 FHIR R4 TestScript Observation $get-satisfaction JSON", "Example TestScript to test the Developer Satisfaction Observation $get-satisfaction operation")
* extension[+].url = "http://hl7.org/fhir/uv/dev-satisfaction/StructureDefinition/testing-scope"
* extension[=].valueCanonical = "http://hl7.org/fhir/uv/dev-satisfaction/OperationDefinition/dev-satisfaction-get-satisfaction"
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
Usage: #definition
* insert TSMetadata(DEVSATObservationgetsatxml, http://hl7.org/fhir/uv/dev-satisfaction, 2023-05-17, "HL7 FHIR R4 TestScript Observation $get-satisfaction XML", "Example TestScript to test the Developer Satisfaction Observation $get-satisfaction operation")
* extension[+].url = "http://hl7.org/fhir/uv/dev-satisfaction/StructureDefinition/testing-scope"
* extension[=].valueCanonical = "http://hl7.org/fhir/uv/dev-satisfaction/OperationDefinition/dev-satisfaction-get-satisfaction"
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
