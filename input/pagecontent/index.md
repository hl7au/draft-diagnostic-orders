### Introduction
This implementation guide supports Diagnostic Requests using HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Australian context.

Initial work has focussed on community Pathology Requests but there has been an attempt to provide foundations compatible with Radiology request needs.  Further input is needed to identify features needed for Hospital requesting.

#### Relationship between HL7 AU and this implementation guide
* This implementation guide is published as a proof of concept implementation guide known to HL7 Australia.
* The content in this proof of concept guide may become an HL7 Australia specification.   
* This implementation guide is not endorsed by HL7 Australia or any of its members just by being made available via HL7 Australia or because it uses content from HL7 Australia specifications.

### How to Read this Guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Guidance](guidance.html): This page provides guidance on using the profiles defined in this guide.
- [Workflow](workflow.html): Requesting workflows for the common diagnostic request approaches.
- [FHIR Artefacts](artifacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This set of pages describes the profiles and extensions that are defined in this guide to represent Australian local concepts using FHIR. Each profile page includes a narrative description, guidance, and formal definition. Although the guidance typically focuses on the profiled elements and seeks to provide a ‘how-to’ guide when representing concepts, it may also may focus on un-profiled elements to aid with implementation.
  - [Search Parameters and Operations](search-parameters-and-operations.html): Additional search parameters and operations needed by IG.
  - [Terminology](terminology.html): This set of pages lists the value sets and code systems defined in this guide.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Change Log](changes.html): Changes between versions of the eRequesting IG.
- [Downloads](downloads.html): This page provides links to downloadable artefacts including the AU Base FHIR NPM package.


### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [Magentus Practice Management](https://www.magentus.com/practice-management)
* [Sonic Healthcare](http://https://www.sonichealthcare.com/)

Any other interested parties are welcome to collaborate and contribute.

The end goal is for this work to feed into the [Requesting Accelerator](https://confluence.csiro.au/display/FHIR/AU+Core+and+AU+eRequesting+FHIR+Accelerator) and in the meantime, this IG will be worked on through the [HL7 AU Connectathon](https://confluence.hl7.org/display/HA/HL7+Australia+Connectathons) process.

FHIR<sup>&reg;&copy;</sup> connectathon events are key to the verification of the guide as being suitable for 
implementation. This implementation guide will be used as the basis for Australian connectathon events.

### Cross Version Analysis

{% capture cross-version-analysis %}{% include cross-version-analysis.xhtml %}{% endcapture %}{{ cross-version-analysis | remove: '<p>' | remove: '</p>'}}

### IG Dependencies

This IG Contains the following dependencies on other IGs.

{% include dependency-table.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### Copyrights

{% capture ip-statement %}{% include ip-statements.xhtml %}{% endcapture %}

{{ ip-statement | remove: '<p>' | remove: '</p>'}}

