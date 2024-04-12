The operation is invoked using the POST Syntax with the Parameters payload as shown in the following example.

---

### POST Example

**Request the Developer Satisfaction Measurement from the Responder actor**

`POST [base]/$get-satisfaction`

~~~
Accept: application/fhir+json;charset=utf-8
Content-Type: application/fhir+json;charset=utf-8
[other headers]
~~~

**Request Body**

~~~
{
  "resourceType": "Parameters",
  "id": "parameters-in-example",
  "parameter": [
    {
      "name": "search",
      "valueString": "status=preliminary"
    }
  ]
}
~~~

**Response**

~~~
HTTP/1.1 200 OK
Content-Type: application/fhir+json;charset=utf-8
[other headers]
~~~

**Response Body**

~~~
{
  "resourceType": "Parameters",
  "id": "parameters-out-example",
  "parameter": [
    {
      "name": "measurement",
      "valueDecimal": 0.77
    },
    {
      "name": "interpretation",
      "valueString": "Above average"
    }
  ]
}
~~~