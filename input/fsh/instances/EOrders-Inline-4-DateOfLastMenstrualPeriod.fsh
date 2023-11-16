Instance: ERequests-Inline-4-DateOfLastMenstrualPeriod
InstanceOf: AUCoreLastMenstrualPeriod
Usage: #inline
* id = "4"
* status = #final
* category = $observation-category#social-history "Social History"
* code
  * coding[0] = $sct#21840007 "Date of last menstrual period"
  * coding[+] = $loinc#8665-2
  * text = "Date of last menstrual period"
* subject = Reference(ERequestsPatientSmith)
* effectiveDateTime = "2022-09-09T09:25:03+10:00"
* valueDateTime = "2022-05-16"