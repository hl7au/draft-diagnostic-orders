ValueSet: ERequestCoverageType
Id: erequest-coverage-type
Title: "eRequest Coverage Type and Self Pay codes"
* ^status = #active
* ^description = "eRequest Coverage Type and Self Pay codes"
* ^experimental = true
* $coverage-selfpay#pay "Pay" // Self Funded
* $v3-ActCode#PUBLICPOL "public healthcare" // Bulk Billed
* $v3-ActCode#VET "veteran health program" // DVA
