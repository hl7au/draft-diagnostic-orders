Instance: PathologyRequest
InstanceOf: ERequestDiagnosticRequestPathology
Title: "Diagnostic Pathology Request"
Description: "Diagnostic Pathology Request example"
Usage: #example
* id = "8dbe2623-c7f4-469e-a10a-a2073a62dd13"
* contained[0] = Inline-1-Coverage
* contained[+] = Inline-2-Encounter
* contained[+] = Inline-3-PregnancyStatusObservation
* contained[+] = Inline-4-DateOfLastMenstrualPeriod
* contained[+] = Inline-5-GestationalAgeObservation

* extension[0] = ResultCopiesTo-DrFields
* extension[+] = Fasting-Inline

* requisition
  * type = $v2-0203#PGN
    * text = "Placer Group Number"
  * value = "GTU88744-A0152"
  * system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003622500032165"
  * assigner = Reference(OrganizationPlacer)
    * display = "Small Family Trust"
* status = #active
* intent = #option
* category = $sct#108252007 "Laboratory procedure"
  * text = "Laboratory procedure"
* priority = #routine
* code = $sct#117923009 
  * text = "Measurement of ovary antibody"
* quantityQuantity
  * value = 1
* subject = Reference(PatientSmith)
  * display = "Joan Smith"
* authoredOn = "2022-09-09T09:25:03+10:00"
* requester
  * identifier[+] 
    * type
      * coding[+] = $v2-0203-AU#UPIN
      * text = "Medicare Provider Number"
    * system = "http://ns.electronichealth.net.au/id/medicare-provider-number"
    * value = "1063625F"
  * type = "PractitionerRole"
  * display = "Dr Jane Doe"
* encounter = Reference(Inline-2-Encounter)
* insurance = Reference(Inline-1-Coverage)
* supportingInfo[0] = Reference(Inline-3-PregnancyStatusObservation)
  * display = "Pregnancy status"
* supportingInfo[+] = Reference(Inline-4-DateOfLastMenstrualPeriod)
  * display = "Date of last menstrual period"
* supportingInfo[+] = Reference(Inline-5-GestationalAgeObservation)
  * display = "Gestational Age by Last Menstrual Period (LMP)"
* note.text = "a clinical note"
* patientInstruction = "some patient instructions"
