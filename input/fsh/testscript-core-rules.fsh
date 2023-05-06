// =================================================
// Alias Definitions
// =================================================

Alias: $OP = http://hl7.org/fhir/restful-interaction
Alias: $OPEXT = http://terminology.hl7.org/CodeSystem/testscript-operation-codes-extended

// =================================================
// TestScript meta data declaration
// =================================================

RuleSet: TSMetadata (id, baseUrl, date, title, description)
//sets basic Testscript metadata based on common fixed values in testscript authoring
//example:
//* insert TSMetadata(testscript-example,http://hl7.org/fhir,2022-06-07,"HL7 FHIR R4 (v4.0.1) TestScript Example","Example TestScript for profile validation")

* id = "{id}"
* url = "{baseUrl}/TestScript/{id}"
* name = "{id}"
* title = {title}
* date = "{date}"
* description = {description}
* status = #active
* publisher = "Health Level 7 (HL7) International"
* contact
  * name = "FHIR project team"
  * telecom.system = #url
  * telecom.value = "http://hl7.org/fhir"
* copyright = "(c) Health Level 7 (HL7) International 2023"

// =================================================
// TestScript origin and destination declarations
// =================================================

RuleSet: TSOrigin (index)
//add a Testscript origin element for a FHIR-Client test system
//example: 
//* insert TSOrigin(1)

* origin[+]
  * index = {index}
  * profile.system = "http://terminology.hl7.org/CodeSystem/testscript-profile-origin-types"
  * profile.code = #FHIR-Client

RuleSet: TSDestination (index)
//add a Testscript destination element for a FHIR-Server test system
//example:
//* insert TSDestination(1)

* destination[+]
  * index = {index}
  * profile.system = "http://terminology.hl7.org/CodeSystem/testscript-profile-destination-types"
  * profile.code = #FHIR-Server

// =================================================
// TestScript fixture declaration
// =================================================

RuleSet: TSFixture (id, reference)
//add a TestScript fixture element
//example:
//* insert TSFixture(patient-create,"./_resources/patient-create.json")

* fixture[+]
  * id = "{id}"
  * autocreate = false
  * autodelete = false
  * resource.reference = {reference}

// =================================================
// TestScript profile declarations
// =================================================

RuleSet: TSBaseProfile (resourceType)
//add a TestScript profile element for a base FHIR profile needed for a validateProfileId assert
//example:
//* insert TSBaseProfile(Patient)

* profile[+] = "http://hl7.org/fhir/StructureDefinition/{resourceType}"
  * id = "{resourceType}Profile"

RuleSet: TSProfile (id, reference)
//add a TestScript profile element needed for a validateProfileId assert
//example:
//* insert TSProfile(uscore-patient-profile,"http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient")

* profile[+] = {reference}
  * id = "{id}"

// =================================================
// TestScript variable declarations
// =================================================

RuleSet: TSVariablePath (name, path, sourceId)
//add a TestScript variable element for a known source using JSONPath or xPath
//example:
//* insert TSVariablePath("createPatientIdentifier","/Patient/identifier[1]/value","resource-create")

* variable[+]
  * name = {name}
  * path = {path}
  * sourceId = {sourceId}

RuleSet: TSVariableFHIRPath (name, fhirpath, sourceId)
//add a TestScript variable element for a known source using FHIRPath
//example:
//* insert TSVariableFHIRPath("createPatientIdentifier","Patient.identifier[0].value","resource-create")

* variable[+]
  * name = {name}
  * expression = {fhirpath}
  * sourceId = {sourceId}

RuleSet: TSVariableHeader (name, headerField, sourceId)
//add a TestScript variable element for a known source from an HTTP Header field
//example:
//* insert TSVariableHeader("createPatientIdentifier","Content-Type","resource-search-response")

* variable[+]
  * name = {name}
  * headerField = {headerField}
  * sourceId = {sourceId}

RuleSet: TSVariableDynamic (name, defaultValue, hint, description)
//add a TestScript variable element based on dynamic input
//example:
//* insert TSVariableDynamic("patientReadId","example","[resource.id]","Enter a known Patient resource id on the destination system.")

* variable[+]
  * name = {name}
  * defaultValue = {defaultValue}
  * hint = {hint}
  * description = {description}

// =================================================
// TestScript setup action declarations
// =================================================

RuleSet: TSSetupOperationGlobal (opCode, format, origin, destination, description)
//flexible operation definition that can be used in less constricted testscript authoring 
//example:
//* insert TSSetupOperationResource(#create,#json,1,1,"Create Patient")
//* setup.action[=].operation.params = "?family=Chalmers"
//* setup.action[=].operation.requestId = "savedRequestContext"
//* setup.action[=].operation.responseId = "savedResponseContext"
//* setup.action[=].operation.sourceId = "fixture1"

* setup.action[+].operation
  * type.system = $OP
  * type.code = {opCode}
  * description = {description}
  * accept = {format}
  * contentType = {format}
  * destination = {destination}
  * encodeRequestUrl = true
  * origin = {origin}

RuleSet: TSSetupOperationResource (opCode, resourceType, format, origin, destination, description)
//flexible operation definition that can be used in less constricted testscript authoring 
//example:
//* insert TSSetupOperationResource(#create,#Patient,#json,1,1,"Create Patient")
//* setup.action[=].operation.params = "?family=Chalmers"
//* setup.action[=].operation.requestId = "savedRequestContext"
//* setup.action[=].operation.responseId = "savedResponseContext"
//* setup.action[=].operation.sourceId = "fixture1"

* setup.action[+].operation
  * type.system = $OP
  * type.code = {opCode}
  * resource = {resourceType}
  * description = {description}
  * accept = {format}
  * contentType = {format}
  * destination = {destination}
  * encodeRequestUrl = true
  * origin = {origin}

RuleSet: TSSetupAssert(description, direction, stopTestOnFail, warning)
//more flexible assert definition that can be used in less constricted testscript authoring but needs the actual assert to be defined afterwords
//example: 
//* insert TSSetupAssert("Confirm that the returned HTTP Header Content-Type is present.",#response,false,false)
//* setup.action[=].assert.headerField = "Content-Type"
//* setup.action[=].assert.operator = #notEmpty

* setup.action[+].assert
  * description = {description}
  * direction = #{direction}
  * stopTestOnFail = {stopTestOnFail}
  * warningOnly = {warning}

// =================================================
// TestScript test declarations
// =================================================

RuleSet: TSTest (id, description)
//add a new test 
//will be paired with other FSH lines/rulesets that use test[=] in order to add to the test created here
//usually included in whatever other rulesets utilized; works as a base building block like Fixture()
//example:
//* insert TSTest(CreatePatient,"Test create Patient resource on destination server")

* test[+]
  * id = "{id}"
  * name = "{id}"
  * description = {description}

RuleSet: TSTestOperationGlobal (opCode, format, origin, destination, description)
//flexible operation definition that can be used in less constricted testscript authoring 
//example:
//* insert TSTestOperationResource(#create,#json,1,1,"Create Patient")
//* test[=].action[=].operation.params = "?family=Chalmers"
//* test[=].action[=].operation.requestId = "savedRequestContext"
//* test[=].action[=].operation.responseId = "savedResponseContext"
//* test[=].action[=].operation.sourceId = "fixture1"

* test[=].action[+].operation
  * type.system = $OP
  * type.code = {opCode}
  * description = {description}
  * accept = {format}
  * contentType = {format}
  * destination = {destination}
  * encodeRequestUrl = true
  * origin = {origin}

RuleSet: TSTestOperationResource (opCode, resourceType, format, origin, destination, description, params)
//flexible operation definition that can be used in less constricted testscript authoring 
//example:
//* insert TSTestOperationResource(#create,#Patient,#json,1,1,"Create Patient")
//* test[=].action[=].operation.params = "?family=Chalmers"
//* test[=].action[=].operation.requestId = "savedRequestContext"
//* test[=].action[=].operation.responseId = "savedResponseContext"
//* test[=].action[=].operation.sourceId = "fixture1"

* test[=].action[+].operation
  * type.system = $OP
  * type.code = {opCode}
  * resource = {resourceType}
  * description = {description}
  * accept = {format}
  * contentType = {format}
  * destination = {destination}
  * encodeRequestUrl = true
  * origin = {origin}
  * params = {params}

RuleSet: TSTestAssert(description, direction, stopTestOnFail, warning)
//more flexible assert definition that can be used in less constricted testscript authoring but needs the actual assert to be defined afterwords
//example: 
//* insert TSTestAssert("Confirm that the returned HTTP Header Content-Type is present.",#response,false,false)
//* test[=].action[=].assert.headerField = "Content-Type"
//* test[=].action[=].assert.operator = #notEmpty

* test[=].action[+].assert
  * description = {description}
  * direction = {direction}
  * stopTestOnFail = {stopTestOnFail}
  * warningOnly = {warning}

RuleSet: TSTestAssertWithProp(description, direction, stopTestOnFail, warning, property, value)
//more flexible assert definition that can be used in less constricted testscript authoring but needs the actual assert to be defined afterwords
//example: 
//* insert TSTestAssert("Confirm that the returned HTTP Header Content-Type is present.",#response,false,false,responseCode,"200")
//* test[=].action[=].assert.headerField = "Content-Type"
//* test[=].action[=].assert.operator = #notEmpty

* test[=].action[+].assert
  * description = {description}
  * direction = {direction}
  * stopTestOnFail = {stopTestOnFail}
  * warningOnly = {warning}
  * {property} = {value}
