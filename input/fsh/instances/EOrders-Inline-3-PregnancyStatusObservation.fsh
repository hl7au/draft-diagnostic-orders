Instance: ERequests-Inline-3-PregnancyStatusObservation
InstanceOf: AUCorePregnancyStatus
Usage: #inline
* id = "3"
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#82810-3 "Pregnancy status"
  * text = "Pregnancy status"
* subject = Reference(ERequestsPatientSmith)
* effectiveDateTime = "2022-09-09T09:25:03+10:00"
* valueCodeableConcept = $sct#77386006 "Pregnancy confirmed"
  * text = "Pregnant"
