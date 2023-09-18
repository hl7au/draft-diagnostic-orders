Profile: ServiceRequestFastingPrecondition
Parent: http://hl7.org/fhir/StructureDefinition/servicerequest-precondition
Id: servicerequest-fasting-precondition
Title: "ServiceRequest Fasting Precondition"
Description: "Extension to ServiceRequest for precondition of patient fasting"
* ^context.type = #element
* ^context.expression = "ServiceRequest"

* valueCodeableConcept MS
* valueCodeableConcept = $sct#726054005 "After fasting" 
  * text MS
