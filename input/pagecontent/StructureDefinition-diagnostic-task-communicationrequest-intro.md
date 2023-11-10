This Task follows the Task/Request pattern where the [DiagnosticCommunicationRequestPatient] and [DiagnosticCommunicationRequestProvider] specifies the action to be completed and the [DiagnosticTaskCommunicationRequest] has potential to track fulfilment.  For example for communication to a patient, the status of the Task could capture

- `failed` - unable to contact patient
- `completed` - contacted patient

In a similar way for practitioner communication, it could track whetehr the urgent result was successfully communicated to the requesting clinician.


{% include fsh-link-references.md %}