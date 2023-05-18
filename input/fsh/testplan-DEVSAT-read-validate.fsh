Instance: testplan-DEVSAT-read-validate
InstanceOf: TestPlan
Usage: #definition
* insert TPMetadata(DEVSATTestPlanreadvalidate, http://hl7.org/fhir/uv/dev-satisfaction, 2023-05-17, "HL7 FHIR R5 TestPlan Read Validate", "Example TestPlan for resource read and profile validation")
* category[+]
  * coding[+]
    * system = "http://hl7.org/fhir/testscript-scope-phase-codes"
    * code = #integration
* scope[+]
  * reference = "http://hl7.org/fhir/uv/dev-satisfaction/StructureDefinition/dev-satisfaction-observation"
* scope[+]
  * reference = "http://hl7.org/fhir/uv/dev-satisfaction/OperationDefinition/dev-satisfaction-get-satisfaction"
* testCase[+]
  * sequence = 1
  * testRun[+]
    * narrative = "Read JSON formatted Observation and validate against the Dev Satisfaction IG"
    * script
      * language
        * coding[+]
          * system = "http://example.org/fhir/testplan/language"
          * code = #testscript
      * sourceReference
        * reference = "http://hl7.org/fhir/uv/dev-satisfaction/TestScript/DEVSATObservationreadvalidatejson"
  * testRun[+]
    * narrative = "Read XML formatted Observation and validate against the Dev Satisfaction IG"
    * script
      * language
        * coding[+]
          * system = "http://example.org/fhir/testplan/language"
          * code = #testscript
      * sourceReference
        * reference = "http://hl7.org/fhir/uv/dev-satisfaction/TestScript/DEVSATObservationreadvalidatexml"
  * testData[+]
    * type
      * system = "http://example.org/fhir/testplan/testData-type"
      * code = #example
    * content[+]
      * reference = "Observation/Observation1"
    * sourceString = "http://hl7.org/fhir/uv/dev-satisfaction/TestScript/DEVSATObservationreadvalidatexml"
