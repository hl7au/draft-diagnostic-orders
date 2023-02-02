Profile: EOrdersServiceRequestFasting
Parent: http://hl7.org/fhir/StructureDefinition/servicerequest-precondition
Id: eorders-servicerequest-fasting
Title: "Service Request Fasting Precondition"
Description: "Extension to request patient fasting"
* ^context.type = #element
* ^context.expression = "ServiceRequest"

* valueCodeableConcept MS
* valueCodeableConcept = $sct#726054005 "After fasting" 
  * text MS
