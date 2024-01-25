Profile: ERequestDiagnosticRequestPathology
Parent: ERequestDiagnosticRequestBase
Id: erequest-diagnosticrequest-pathology
Title: "Diagnostic Service Request Pathology"
Description: "Diagnositic Service request for pathology."

* extension contains ERequestServiceRequestRule3Exemption named requestRule3exemption 0..1 MS

* code 1.. MS
* code ^short = "Pathology test code or free text test name"
* code from $RCPA-SPIA (extensible)
* code.coding ^short = "Ideally a value set from SNOMED-CT such as RCPA SPIA request codes, but may need to support lab maintained test codes."
* code.coding.extension contains http://hl7.org/fhir/StructureDefinition/valueset-reference named spia-vsref 0..1 MS
* code.coding.extension[spia-vsref] ^short = "URL (version specific) of diagnostic request value set the code was selected from"
* code.coding.extension[spia-vsref].valueUri 1..1
* code.coding.extension[spia-vsref].valueUri ^short = "Example: 'https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3|3.0.1'"
* code.text 1..1
* code.text ^short = "Test name selected or free text entered by the user"

* quantityQuantity 1..1 MS
  * ^short = "Allows provide quantity of a test (normally 1)"
* occurrencePeriod MS
  * ^short = "Period over which the service should occur independent of regulatory obligation"

Extension: ERequestServiceRequestRule3Exemption
Id: erequest-servicerequest-rule3exemption
Title: "Diagnostic Request Rule 3 Exemption"
Description: "Extension to request rule 3 exemption"
Context: ServiceRequest

* valueBoolean MS
