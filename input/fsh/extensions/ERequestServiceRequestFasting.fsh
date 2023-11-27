Profile: ERequestServiceRequestFasting
Parent: http://hl7.org/fhir/StructureDefinition/servicerequest-precondition
Id: erequest-servicerequest-fasting
Title: "Diagnostic Fasting Precondition extension"
Description: "Extension to request patient fasting"
* ^context.type = #element
* ^context.expression = "ServiceRequest"

* valueCodeableConcept MS
* valueCodeableConcept = $sct#726054005 "After fasting" 
  * text MS
