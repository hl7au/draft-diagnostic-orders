Instance: Rule3Exemption
InstanceOf: ERequestDiagnosticRequestPathology
Title: "ServiceRequest with Rule 3 Exemption"
Description: "ServiceRequest with Rule 3 Exemption"
Usage: #example
* contained[+] = pregnantInline
* contained[+] = LMPDateInline
* contained[+] = GestAgeInline
* contained[+] = billingCoverageInline
* contained[+] = patientEncounterInline
* extension[+]
  * url = "http://draft.hl7.org.au/fhir/diagnostic-orders/StructureDefinition/erequest-servicerequest-rule3exemption"
  * valueBoolean = true
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/servicerequest-precondition"
  * valueCodeableConcept = $sct#726054005 "After fasting"
    * text = "Fasting"
* extension[+]
  * url = "http://hl7.org.au/fhir/StructureDefinition/result-copies-to"
  * valueReference = Reference(DrAmberBarnes) "Amber Barnes"
    * identifier[+]
      * system = "http://ns.electronichealth.net.au/id/medicare-provider-number"
      * type = $v2-0203-AU#UPIN "Medicare Provider Number"
        * text = "Medicare Provider Number"
      * value = "9607545L"
* authoredOn = "2023-11-15T10:09:57.000001+10:00"
* category = $sct#108252007 "Laboratory procedure"
  * text = "Laboratory procedure"
* code
  * coding = $sct#13070009 "Hepatitis A virus antibody, IgG type"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-reference"
      * valueUri = "https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3|3.0.1"
  * text = "Hepatitis A virus antibody, IgG type"
* encounter = Reference(patientEncounterInline) "Encounter"
  * type = "Encounter"
* identifier
  * system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003627796442929"
  * type = $v2-0203#PLAC "Placer Identifier"
    * text = "Placer Number"
  * value = "PON-Genie-20231115100957-0655"
* insurance = Reference(billingCoverageInline) "Coverage"
  * type = "Coverage"
* intent = #order
* occurrencePeriod
  * end = "2024-05-15"
  * start = "2023-11-15"
* patientInstruction = "Some patient instructions"
* priority = #routine
* quantityQuantity
  * value = 6
* reasonCode.text = "A clinical note"
* requester = Reference(DrPennyWalkerAtSouthStephaniestad) "Dr Penney Walker @ South Stephaniestad"
* requisition
  * assigner = Reference(SouthStephaniestadMedicalCentre) "South Stephaniestad Medical Centre"
  * system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003627796442929"
  * type = $v2-0203#PGN "Placer Group Number"
    * text = "Placer Group Number"
  * value = "GEN69798-A0427"
* status = #active
* subject = Reference(RobinMiller) "Robin Miller"
* supportingInfo[0] = Reference(pregnantInline) "Observation"
  * type = "Observation"
* supportingInfo[+] = Reference(LMPDateInline) "Observation"
  * type = "Observation"
* supportingInfo[+] = Reference(GestAgeInline) "Observation"
  * type = "Observation"

Instance: pregnantInline
InstanceOf: AUCorePregnancyStatus
Usage: #inline
* text
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnant</div>" 
  * status = #generated
* category = $observation-category#social-history "Social History"
  * text = "Social History"
* code = $loinc#82810-3 "Pregnancy status"
  * text = "Pregnancy status"
* effectiveDateTime = "2023-11-15T10:10:00+10:00"
* status = #final
* subject = Reference(RobinMiller) "Robin Miller"
* valueCodeableConcept = $loinc#LA15173-0 "Pregnant"
  * text = "Pregnant"

Instance: LMPDateInline
InstanceOf: AUCoreLastMenstrualPeriod
Usage: #inline
* text
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">LMP: 2023-11-01</div>" 
  * status = #generated
* category = $observation-category#survey "Survey"
  * text = "Survey"
* code = $sct#21840007 "Date of last menstrual period"
  * text = "Date of last menstrual period"
* effectiveDateTime = "2023-11-15T10:10:00+10:00"
* status = #final
* subject = Reference(RobinMiller) "Robin Miller"
* valueDateTime = "2023-11-01"

Instance: GestAgeInline
InstanceOf: AUCoreGestationalAge
Usage: #inline
* text
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Gestational Age: 14 days</div>" 
  * status = #generated
* category = $observation-category#survey "Survey"
  * text = "Survey"
* code.coding[0] = $sct#57036006 "Foetal gestational age"
* code.coding[+] = $loinc#11885-1 "Gestational age Estimated from last menstrual period"
* code.text = "Gestational Age"
* effectiveDateTime = "2023-11-15T10:10:00+10:00"
* focus
  * display = "Baby of Miller, Robin Mrs."
* status = #final
* subject = Reference(RobinMiller) "Robin Miller"
* valueQuantity = 14 'd' "day"

Instance: billingCoverageInline
InstanceOf: ERequestCoverage
Usage: #inline
* beneficiary = Reference(RobinMiller) "Robin Miller"
* payor
  * display = "Medicare Australia"
  * type = "Organization"
* status = #active
* type
  * coding = $v3-ActCode#PUBLICPOL "public healthcare"
    * version = "2018-08-12"
  * text = "Bulk Billed"

Instance: patientEncounterInline
InstanceOf: ERequestEncounter
Usage: #inline
* class = $v3-ActCode#AMB "ambulatory"
* status = #finished