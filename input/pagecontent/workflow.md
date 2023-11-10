### Directed Order

In a directed order, the `Task.owner` is assigned to the selected provider at the point of order creation.

{% include img.html img="Flow-order.png" caption="Workflow of a Directed Diagnostic Order" %}

### Undirected Order

In an undirectoed order, no `Task.owner` is assigned at the time of order creation.  Instead, the Task is assigned to the provider scanning the barcode.

{% include img.html img="Flow-undirected.png" caption="Workflow of an Undirected Diagnostic Order" %}

### Transfer of a directed Order to an Alternate Provider

A transferred order is similar to an undirected order except the original order provider has to have their fulfilment task cancelled.

{% include img.html img="Flow-transfer.png" caption="Workflow of a Diagnostic Order Being Claimed by an Alternate Provider" %}
