### Issues and Opportunities

Each ServiceRequest is associated with a single test and are linked through the requisition attribute to form a group.  Each ServiceRequest has its own Task to track fulfilment.  We found that we were unable to efficiently discover a group of requests so we have introduced a special Task that represents a group Task and is linked to the individual request Tasks through partOf in the child Tasks.  In addition, there are tags to differentiate the group Task from the request Tasks.  This approach is worthy of further investigation.
It is also possible to use a FHIR r4 RequestGroup (r5 RequestOrchestration) to mirror the group Task for ServiceRequests.  

It is still unclear what the use-case is for this is at present.  It could be used to convey a request to the individual service requests (which might otherwise be returned by a FHIR search in a random sequence) but there are more complex orchestrations and constraints that such a group can carry.  

It should be noted that the group identifier is carried in both request Tasks and ServiceRequests, as well as the group Task.
