The fulfilment `Task.status` is an important way of providing transparency to requesting clinicians.  The following diagram shows which role updates which status and to what value.  While the `Task.status` is related to the `ServiceRequest.status`, they are managed independently.  The `ServiceRequest.status` is only updated when the requesting clinician has determined that the request has been completed or should be revoked.

{% include img.html img="RequestTask-status.png" caption="Task and ServiceRequest statuses." %}