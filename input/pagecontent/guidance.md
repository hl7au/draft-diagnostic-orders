### Intent of this Implementation Guide

This IG is currently in a draft state and supports the emergent use of FHIR for Diagnostic requests.  It is based on work by Magentus Practice Management and Sonic in support of community Pathology requests and should be seen as a starting point rather than the end of a consensus process.

The IG was created with the context of pathology requests but attempts to allow for extension to radiology requesting.

#### Assumptions
- Digital diagnostic requests are providing a similar transition role as did ETP.  That is, paper is still a core part of the transaction at present.  We rely upon the token/barcode to support patient choice and placer->filler interlinking.  These assumptions may change if new policy/regulations are introduced as was the case with the paper prescription->ETP->ePrescribing transition.
- Implementation of this IG would be greatly enhanced through 
    - A national Token management service that allowed patients and their agents to discover request (prescription, referral, diagnostic request, etc.) as an alternative to carrying paper tokens (request forms).
    - A national authentication service that supported patient and healthcare service authentication and role information to allow more dynamic request discovery and transfer.

#### Known Issues
- Coding of tests is still a work in progress.  We reference the RCPA SPIA requesting value set but it would be useful to be more inclusive of other codes where there is a recognised business need.
- There is minimal clinical context included with the pathology request.  We need to expand based on the 80:20 principle to make the request more applicable out of the box.
- The foundations support the concept of directed requests but can also support undirected requests, relying on the patient to link the request to a particular filler.  We have concentrated on providing mechanisms and have avoided dictating specific policy settings.
- There is currently no attempt to cover updates to a request, by either the placer or the filler.  FHIR provides building blocks for updating requests and this IG should provide guidance on how updates are supported.
- We have not been specific about the format of barcodes as there are currently business constraints with the size and form based on existing use.  Ideally, we would also include a barcode/request identity that both identifies a request as well as the repository in which that request is held.  This would enable a range of architectures from a single request repository to multiple request repositories without loss of functionality or scale.
- Further effort is required to extend this approach to support radiology requests, i.e., coding, clinical context, etc.
