Instance: testscript-DEVSAT-Observation-read-validate-json
InstanceOf: TestScript
Usage: #definition
* insert DEVSAT-profile-read-validate-test(Observation, Observation1, DEVSATObservationreadvalidatejson, 2023-04-26, #json, DEVSATObservationProfile, "http://hl7.org/fhir/uv/dev-satisfaction/StructureDefinition/dev-satisfaction-observation", DEVSAT-Observation)

Instance: testscript-DEVSAT-Observation-read-validate-xml
InstanceOf: TestScript
Usage: #definition
* insert DEVSAT-profile-read-validate-test(Observation, Observation1, DEVSATObservationreadvalidatexml, 2023-04-26, #xml, DEVSATObservationProfile, "http://hl7.org/fhir/uv/dev-satisfaction/StructureDefinition/dev-satisfaction-observation", DEVSAT-Observation)

Instance: testscript-DEVSAT-Observation-get-satisfaction-json
InstanceOf: TestScript
Usage: #definition
* insert TSMetadata(DEVSATObservationgetsatjson, http://hl7.org/fhir/uv/dev-satisfaction, 2023-04-26, "HL7 FHIR R5 TestScript Observation $get-satisfaction", "Example TestScript to test the Developer Satisfaction Observation $get-satisfaction operation")
* insert TSOrigin(1)
* insert TSDestination(1)
* insert TSTest(GetSatisfactionNoArgs, "Test Developer Satisfaction Observation $get-satisfaction operation with no args on destination server and assert successful returned satisfaction value")
* insert TSTestOperationGlobal(#operation, #json, 1, 1, "$get-satisfaction operation with no args")
* test[=].action[=].operation.params = "/$get-satisfaction"
* insert TSTestAssertWithProp("Confirm that the returned response code is 200 OK.", #response, false, false, responseCode, "200")
* insert TSTestAssertWithProp("Confirm that the returned response payload is a Parameters resource.", #response, false, false, resource, "Parameters")
* insert TSTestAssert("Confirm that the returned Parameters contains a measurement parameter.", #response, false, false)
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'measurement').exists()"

Instance: testscript-DEVSAT-Observation-get-satisfaction-xml
InstanceOf: TestScript
Usage: #definition
* insert TSMetadata(DEVSATObservationgetsatxml, http://hl7.org/fhir/uv/dev-satisfaction, 2023-04-26, "HL7 FHIR R5 TestScript Observation $get-satisfaction", "Example TestScript to test the Developer Satisfaction Observation $get-satisfaction operation")
* insert TSOrigin(1)
* insert TSDestination(1)
* insert TSTest(GetSatisfactionNoArgs, "Test Developer Satisfaction Observation $get-satisfaction operation with no args on destination server and assert successful returned satisfaction value")
* insert TSTestOperationGlobal(#operation, #xml, 1, 1, "$get-satisfaction operation with no args")
* test[=].action[=].operation.params = "/$get-satisfaction"
* insert TSTestAssertWithProp("Confirm that the returned response code is 200 OK.", #response, false, false, responseCode, "200")
* insert TSTestAssertWithProp("Confirm that the returned response payload is a Parameters resource.", #response, false, false, resource, "Parameters")
* insert TSTestAssert("Confirm that the returned Parameters contains a measurement parameter.", #response, false, false)
* test[=].action[=].assert.expression = "Parameters.parameter.where(name = 'measurement').exists()"
