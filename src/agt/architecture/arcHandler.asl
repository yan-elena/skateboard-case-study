// Agent sample_agent in project main

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : true
    <-  .print("hello world.");
        .

{ include("$jacamo/templates/common-cartago.asl") }
{ include("$jacamo/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moise/asl/org-obedient.asl") }
