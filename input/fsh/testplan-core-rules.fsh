// =================================================
// TestPlan meta data declaration
// =================================================

RuleSet: TPMetadata (id, baseUrl, date, title, description)
//sets basic TestPlan metadata based on common fixed values in testplan authoring
//example:
//* insert TPMetadata(testplan-example,http://hl7.org/fhir,2023-05-17,"HL7 FHIR R5 (v5.0.0) TestPlan Example","Example TestPlan for profile validation")

* id = "{id}"
* url = "{baseUrl}/TestPlan/{id}"
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
// TestPlan dependency declarations
// =================================================

RuleSet: TPDependency (description, predecessor)
//add a TestTestPlan dependency element for a predecessor TestPlan
//example: 
//* insert TPDependency("TestPlan predecessor to setup test data","http://hl7.org/fhir/testplan-data-setup")

* dependency[+]
  * description = {description}
  * predecessor = {predecessor}
