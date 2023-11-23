Invariant: inv-narrative-for-supportinginfo-servicerequest
Description: "Always require a narrative for supportingInfo references in ServiceRequest"
Severity: #error
Expression: "resolve().text.div.exists()"
