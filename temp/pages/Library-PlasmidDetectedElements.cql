library PlasmidDetectedElements version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'
include FHIRCommon version '4.0.1' called FC

include PlasmidDetectedConcepts called Cx

// QUESTION: Should this be a single timepoint, or is a period required?
//parameter AsOf DateTime default Now()

/*
NOTE: Introduced Measurement Period as the parameter here for demonstration purposes
so it will run on the current implementations.
*/
parameter "Measurement Period" Interval<DateTime>
  default Interval[Now() - 5 year, Now()]

context Patient

define AsOf:
  end of "Measurement Period"


define "Resistance Plasmid Mediated Diagnostic Reports":
  [DiagnosticReport: Cx."Resistance Plasmid Mediated"] DR
    where DR.status = 'final'


define "Is Flagged for Public Health":
  exists "Resistance Plasmid Mediated Diagnostic Reports"


define "Phenotypic susceptibility Reports":
[DiagnosticReport: Cx."phenotypic antimicrobial drug susceptibility test"] DDR
where DDR.status = 'final'




define "WGS triggered by antibiogram":
exists "Phenotypic susceptibility Reports"