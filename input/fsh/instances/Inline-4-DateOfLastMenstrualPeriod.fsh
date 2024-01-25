Instance: Inline-4-DateOfLastMenstrualPeriod
InstanceOf: AUCoreLastMenstrualPeriod
Usage: #inline
* text
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">LMP: 2022-05-16</div>" 
  * status = #generated
* id = "4"
* status = #final
* category = $observation-category#social-history "Social History"
* code
  * coding[loincLastMenstrualPeriod] = $loinc#8665-2
  * coding[+] = $sct#21840007 "Date of last menstrual period"
  * text = "Date of last menstrual period"
* subject = Reference(PatientSmith)
* effectiveDateTime = "2022-09-09T09:25:03+10:00"
* valueDateTime = "2022-05-16"