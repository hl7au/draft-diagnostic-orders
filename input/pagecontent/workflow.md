This IG supports three basic workflows for the creation, assignment, and fulfilment of diagnostic requests.


### Directed Order

In a directed order, the `Task.owner` is assigned to the selected provider at the point of order creation.  This assignment is optional and if created will allocate the fulfilment task for a request to a provider.  This duplicates existing market behaviour.  

It is the responsibility of the placer system to manage the fulfilment tasks for requests.  While the filler will update their fulfilment tasks, the placer will ensure that fulfilment tasks are appropriately cancelled.  For instance in the following directed diagnostic order flow, tasks are cancelled when the order is cancelled or if a request is prematurely completed.

{% include img.html img="Flow-order.png" %}

### Undirected Order

In an undirected order, no `Task.owner` is assigned at the time of order creation.  Instead, the Task is assigned to the provider which scans the barcode.  They then use the claim operation to request assignment of the request fulfilment tasks and then have subsequent access to the request.  This approach requires the filler system to process the discovery of a request in near real-time as opposed to a directed requests where the filler may receive the order hours or days before the patient attends the service delivery point.

{% include img.html img="Flow-undirected.png" %}

### Transfer of a directed Order to an Alternate Provider

A transferred order is similar to an undirected order except the original order provider has to have their fulfilment tasks cancelled as they are no longer the chosen service provider.  In theory, transfer should only happen once at the point where a patient attends an alternative service but there may be circumstances where multiple re-assignment is required.  This is not a constraint of the design.  The transfer is achieved using the same claim operation as that used for an undirected request.

{% include img.html img="Flow-transfer.png" %}
