Instance: PathologyRequest-Inline-5-GestationalAgeObservation
InstanceOf: AUCoreGestationalAge
Usage: #inline
* id = "5"
* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[0] = $sct#57036006 "Fetal gestational age"
* code.coding[+] = $loinc#11885-1 "Gestational age Estimated from last menstrual period"
* code.text = "Gestational Age by Last Menstrual Period (LMP)"
* subject = Reference(PatientSmith)
* focus.display = "Baby of Hawkins, Maria Mrs."
* effectiveDateTime = "2022-09-09T09:25:03+10:00"
//* valueQuantity = 16 'wk' "week"
* valueQuantity = 112 'd' "day"
