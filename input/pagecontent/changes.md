### Release 0.0.8
- Publication date: TBD
- Based on FHIR version: 4.0.1

Post Melbourne Connectathon changes based on agreements at the track.

#### Changes in this version

##### Add RequestGroup

- Added a [DiagnosticRequestGroup] as the focus of the Task Group
- Requires `Encounter` to no longer be contained in a `ServiceRequest` as needs to be referenced by both `DiagnosticGroup` and `ServiceRequest`
- Resources diagram modified to include `RequestGroup`
- Will be useful to carry a sequence for the individual ServiceRequests ([ERequestsDiagnosticRequestPathology] or [ERequestsDiagnosticRequestRadiology]) so that they may be represented digitally as they would be on paper
  - This is the use case as provided by Sonic pathology to lower cognitive load when reconciling paper and digital

##### Occurrence and Quantity in [ERequestsDiagnosticRequestPathology]

- Make quantity mandatory.  It will usually be 1 except for Rule 3 Exemption.
- Occurrence will be optional but must support if available.  This is a useful way of carrying guidance for the patient for when they are expected to have the service performed.  Note that this does not represent regulatory constraints on request vailidity period.

##### supportedInfo in [ERequestsDiagnosticRequestBase] must provide narrative

- Any supportingInfo references should include narrative so that they can be appropriately passed to the servicing clinician.
- Without this, there is a possibility that this additional information may be clinically relevant but uninterpretable.

##### businessStatus codes to distinguish claimed vs cancelled fulfilment Tasks

- Create an extensible `valueSet` for `Task.businessStatus` to distinguish claimed and cancelled.

##### Lock CommunicationRequest Task to Requested status until further maturity of use

- `Task.status` restricted to `requested` for [DiagnosticTaskCommunicationRequest].

##### Representation of unlimited in Quantity for ServiceRequest

- Quantity can carry a code rather than a value so possible to use http://loinc.org:LA6485-2 Unlimited.

##### Priority of [DiagnosticCommunicationRequestProvider] must be urgent

- Restrict `CommunicationRequest.priority` to `urgent`
- Add an invariant that ensures a [DiagnosticCommunicationRequestProvider] must only be used if the `about` is `urgent`

##### Create consistent naming based on eRequesting

- As noted in known issues, naming in the IG was a bit all over the place.  While we still don't have a formal HL7 AU publication namespace, I took it upon myself to remove references to `order` and to create more consistency in using `eRequest` whereever possible.

{% include fsh-link-references.md %}