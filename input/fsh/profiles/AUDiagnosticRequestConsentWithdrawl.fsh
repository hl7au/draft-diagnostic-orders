Profile: AUDiagnosticRequestConsentWithdrawl
Parent: http://hl7.org/fhir/StructureDefinition/Consent
Id: au-diagnosticrequest-consentwithdrawl
Title: "AU Diagnostic Request Consent Withdrawl"
Description: "Diagnostic Withdraw Consent to upload result to MHR"
* status MS
* status = #active
* scope MS
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category ..1 MS
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL
* patient 1.. MS 
* patient only Reference(AUCorePatient)
* dateTime 1.. MS
* performer ..1 MS
* performer only Reference (au-relatedperson or AUCorePatient)
* organization 1..1 MS 
* organization only Reference (AUCoreOrganization)
* policyRule 1.. MS
* policyRule = http://terminology.hl7.org/CodeSystem/v3-ActCode#OPTIN
* provision 1.. MS
  * type 1.. MS
  * type = #deny
  * action 1..1 MS
  * action = http://terminology.hl7.org/CodeSystem/consentaction#disclose
  * class 1.. MS
  * class = http://hl7.org/fhir/resource-types#DiagnosticReport
  * data 1..* MS
    * meaning MS
    * meaning = #dependents
    * reference MS
    // HF: problem is that the Sonic DiagnosticReport does not reference the ServiceRequest 
    //     as they can not reliably link the results to the request
    * reference only Reference(AUDiagnosticRequestServiceRequest)
    * reference ^short = "Reference to dependent ServiceRequest(s). (See description for unresolved problem)"
    * reference ^definition = """
    Reference to the ServiceRequest(s) related to the DiagnosticReport to be not disclosed.

    **Problem: The Sonic DiagnosticReport will not reference the ServiceRequest as they can not reliably link the results to the request.**

    Will need to consider how to link this consent to the DIagnosticReport, perhaps a conditional reference or logical reference using the Placer Group Number (PGN)??
    """
