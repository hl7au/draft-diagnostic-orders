Profile: EOrdersServiceRequestFasting
Parent: http://hl7.org/fhir/StructureDefinition/servicerequest-precondition
Id: eorders-servicerequest-fasting
Title: "Diagnostic Request Fasting Precondition extension"
Description: "Extension to request patient fasting"
* ^context.type = #element
* ^context.expression = "ServiceRequest"

* valueCodeableConcept MS
* valueCodeableConcept = $sct#726054005 "After fasting" 
  * text MS
