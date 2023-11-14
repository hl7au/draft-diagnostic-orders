Profile: ERequestsDiagnosticRequestPathology
Parent: ERequestsDiagnosticRequestBase
Id: eorders-diagnosticrequest-pathology
Title: "Diagnostic Service Request Pathology"
Description: "Diagnositic Service request for pathology."

* extension contains ERequestsServiceRequestRule3Exemption named request-rule3exemption 0..1 MS

* code 1.. MS
* code ^short = "Pathology test code or free text test name"
* code from $RCPA-RP (example)
* code.coding ^short = "Ideally a value set from SNOMED-CT such as RCPA SPIA request codes, but may need to support lab maintained test codes."
* code.coding.extension contains http://hl7.org/fhir/StructureDefinition/valueset-reference named spia-vsref 0..1 MS
* code.coding.extension[spia-vsref] ^short = "Url (version specific) of diagnostic request value set the code was selected from"
* code.coding.extension[spia-vsref].valueUri 1..1
* code.coding.extension[spia-vsref].valueUri ^short = "Example: 'https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3|3.0.1'"
* code.text 1..1
* code.text ^short = "Test name selected or free text entered by the user"

* quantityQuantity MS
  * ^short = "Support for Rule 3 Exemption quantity"
* occurrencePeriod MS
  * ^short = "Support for Rule 3 Exemption period (6 months) vs 12 months for Pathology Request"
