Instance:  ConsentDisclosureWithdrawl
InstanceOf: EOrdersConsentWithdrawl
Title: "eOrders Consent withdraw upload MHR"
Description: "eOrders Consent to indicate do not upload to MHR"
Usage:  #example
* id = "6d83978c-6507-4c1a-8099-4a7d7fe48bc0"
* status = #active

// Agreement to collect, access, use or disclose (share) information
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy

// information disclosure: Consent to have collected healthcare information disclosed
// Canadian example uses Loinc 59284-0 (Consent Document)
* category[+] = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL

* patient = Reference(EOrdersPatientSmith)
* dateTime = "2022-04-19"

// not in Canadian example
* performer[+] = Reference(EOrdersPatientSmith)

* organization[+] = Reference(OrganizationPlacer)

// * sourceAttachment.title = "The terms of the consent in lawyer speak"

// default policy (MHR-implied-consent?? - examples are 'hippa-restrictions')
// OPTIN is not part of http://terminology.hl7.org/CodeSystem/consentpolicycodes. 
// Adapted from https://www.hl7.org/fhir/consent-example-grantor.json.html
// Canadian example uses OPTIN to withdraw consent for disclosure of related documents 
// (note data is a Task) See https://www.hl7.org/fhir/consent-example-notThis.json.html
// should it be OPTINR (opt-in with restrictions) allowing patient to withdraw consent
* policyRule = http://terminology.hl7.org/CodeSystem/v3-ActCode#OPTIN
  
* provision
  * type = #deny // not required? (not included in Canadian example)
  
  // actor (role and reference) - MHR

  * action[+]    // not required? (not included in Canadian example)
    * coding = http://terminology.hl7.org/CodeSystem/consentaction#disclose
    
  // should this be something more general, or use code instead, or nothing at all?
  * class[+] = http://hl7.org/fhir/resource-types#DiagnosticReport

  // The consent applies directly to the instance of the resource and instances that refer to it.
  * data[+]
    * meaning = #dependents // #related in Canadian example
    * reference = Reference(PathologyServiceRequest)

