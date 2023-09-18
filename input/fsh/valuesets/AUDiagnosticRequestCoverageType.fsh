ValueSet: AUDiagnosticRequestCoverageType
Id: au-diagnosticrequest-coveragetype
Title: "AU Diagnostic Request Coverage Type and Self Pay codes"
* ^status = #active
* ^description = "Diagnostic Request Coverage Type and Self Pay codes"
* ^url = "http://terminology.hl7.org.au/ValueSet/diagnosticrequest-coveragetype"
* ^experimental = false
* $coverage-selfpay#pay "Pay" // Self Funded
* $v3-ActCode#PUBLICPOL "public healthcare" // Bulk Billed
* $v3-ActCode#VET "veteran health program" // DVA
