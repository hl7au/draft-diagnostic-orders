Pathology requests extend [ERequestsDiagnosticRequestBase] to call out [SPIA test code](https://www.rcpa.edu.au/Library/Practising-Pathology/PTIS/APUTS-Downloads) support as well support for [Rule 3 Exemption](https://www9.health.gov.au/mbs/fullDisplay.cfm?type=note&q=PN.4.2&qt=noteID) requesting.

The IG also calls out use of `quantity` and `occurrence` as foundations of Pathology requests.  While in general Pathology requests are valid for 12 months, under the Rule 3 Exemption, requests are valid for up to 6 months and indicate a multiplicity constraint on service provision based on the single request.  These can be explicitly be stated in the `quantity` and `occurrence` attributes.

{% include fsh-link-references.md %}