### Intent of this Implementation Guide

This IG is currently in a draft state and supports the emergent use of FHIR for Diagnostic requests.  It is based on work by [Magentus Practice Management](https://www.magentus.com/practice-management) and [Sonic Healthcare](https://www.sonichealthcare.com/) in support of community Pathology requests and should be seen as a starting point rather than the end of a consensus process.

The IG was created with the context of pathology requests but attempts to allow for extension to radiology requesting.

### Assumptions
- Digital diagnostic requests are providing a similar transition role as did ETP for digital prescribing.  That is, paper is still a core part of the transaction at present.  We rely upon the token/barcode to support patient choice and the linking of placer to filler.  These assumptions may change if new policy/regulations are introduced as was the case with the paper prescription to ETP to ePrescribing transition.
- Implementation of this IG would be greatly enhanced through 
    - A national Token management service that allowed patients and their agents to discover requests (prescription, referral, diagnostic request, etc.) as an alternative to carrying paper tokens (request forms).
    - A national authentication service that supported patient and healthcare service authentication and role information to allow more dynamic request discovery and transfer.

### Known Issues
- Naming in this IG is all over the place between requests, requesting, erequests, erequesting, orders, diagnostics requests, diagnostic orders, etc.  This needs to be cleaned up.
- Coding of tests is still a work in progress.  We reference the RCPA SPIA requesting value set for pathology but it would be useful to be more inclusive of other codes where there is a recognised business need.
- There is minimal clinical context included with the pathology request.  We need to expand this based on the 80:20 principle to make the request more applicable out of the box.  In addition, we need to qualify clinical context that is generic for all requesting as opposed to specialised context for pathology or radiology requesting.
- The foundations support the concept of directed requests but can also support undirected requests, relying on the patient to link the request to a particular filler.  We have concentrated on providing mechanisms and have avoided dictating specific policy settings so either option can be supported.
- There is currently no attempt to cover updates to a request, by either the placer or the filler.  FHIR provides building blocks for updating requests and this IG should provide guidance on how updates are supported.
- We have not been specific about the format of barcodes as there are currently business constraints with the size and form based on existing use.  Ideally, we would include a barcode/request identity that both identifies a request as well as the repository in which that request is held.  This would enable a range of architectures from a single request repository to multiple request repositories without loss of functionality or scale.
- Further effort is required to extend this approach to support radiology requests, i.e., coding, clinical context, etc.

### Roles

There are three key roles in the requesting service.  These should be read in the context of [Profiles and Extensions](profiles-and-extensions.html) for a description of the `ServiceRequest`, `Task`, and group `Task` relationships.

- `Placer`:  The requesting clinician deposits the request into the FHIR service.  A request includes a set of `ServiceRequest`s, a set of fulfilment `Task`s, and a group `Task` that binds the fulfilment `Task`s. 
    - The Placer **SHALL** create `ServiceRequest`s, `Task`s, and a group `Task` for each order, even for undirected orders.
    - The Placer **SHOULD** infer order status from a combination of `status` and `businessStatus` present in **both** `Task`s and `groupTask`.
    - The Placer **SHALL** order individual ServiceRequests using the `ServiceRequest.authoredOn` time.
- `Filler`: A diagnostic service provider that watches for assigned fulfilment `Task`s, process the `ServiceRequest`s, and updates the `Task.status` for the individual `ServiceRequest`s as well as the group `Task`.
    - The Filler **SHALL** update individual `Task` statuses as well as the group `Task` status.
    - The Filler **SHALL** follow the correct order of `Task` status updates, e.g. a `Received` **SHALL** not proceed an `Accepted` status.
- `Requesting Service`: This role is responsible for processing `claim` operations.  That is, to cancel any outstanding, assigned `Task`s for a request and create and assign ownership of new `Task`s.
    - The Requesting Service **SHALL** cancel incomplete Tasks on `ServiceRequest` completion or claiming of an order by an alternate provider.

{% include fsh-link-references.md %}