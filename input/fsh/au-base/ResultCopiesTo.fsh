Extension: ResultCopiesTo
Id: result-copies-to
Title: "Result Copies To"
Description: "This extension applies to the ServiceRequest resource and is used to represent an intended recipient who is indicated on the service request to recieve a copy of the results from the processing of the service request."

* ^url = "http://hl7.org.au/fhir/StructureDefinition/result-copies-to"
* ^status = #draft
* ^date = "2022-05-31"
* ^publisher = "Health Level Seven Australia (Orders and Observations WG)"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].use = #work
* ^contact.telecom[=].value = "http://hl7.com.au"
* ^jurisdiction = urn:iso:std:iso:3166#AU
* ^copyright = "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved."

* ^context.type = #element
* ^context.expression = "ServiceRequest"

* . ^short = "Result copies to"
* . ^definition = "A recipient who is indicated on the service request to recieve a copy of the result. A recipient is an entity to whom a copy of the result is directed at the time of authoring of the service request."
* url = "http://hl7.org.au/fhir/StructureDefinition/result-copies-to" (exactly)
* value[x] 1..
* value[x] only Reference(Practitioner or Device or Patient or RelatedPerson or PractitionerRole or Organization)
* value[x] ^short = "Result copies to"