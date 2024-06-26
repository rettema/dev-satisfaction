Instance:      dev-satisfaction-get-satisfaction
InstanceOf:    OperationDefinition
Usage:         #definition
Title:         "Get Satisfaction Operation"
Description:   "This operation is used to get the satisfaction measurement based on the stored satisfaction observations."
* id            = "dev-satisfaction-get-satisfaction"
* name          = "DevSatisfactionGetSatisfaction"
* description   = "This operation is used to get the satisfaction measurement based on the stored satisfaction observations."
* insert OperationCommon
* system        = true
* type          = false
* instance      = false
* code          = #get-satisfaction

* parameter[+].name          = #search
* parameter[=].type          = #string
* parameter[=].use           = #in
* parameter[=].min           = 0
* parameter[=].max           = "1"
* parameter[=].documentation = "Optional list of query parameters on Observation to limit the measurement to those satisfaction observations."

* parameter[+].name          = #measurement
* parameter[=].type          = #decimal
* parameter[=].use           = #out
* parameter[=].min           = 1
* parameter[=].max           = "1"
* parameter[=].documentation = "The computed satisfaction measurement value."

* parameter[+].name          = #interpretation
* parameter[=].type          = #string
* parameter[=].use           = #out
* parameter[=].min           = 1
* parameter[=].max           = "1"
* parameter[=].documentation = "An interpretation description of the satisfaction measurement value."
