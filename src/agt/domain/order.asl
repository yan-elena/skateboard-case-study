// Agent sample_agent in project main

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : focusing(RegArt,regArt,_,_,reg,_)
    <-  .wait(1000);
        .print("started producing orders.");
        !new_order(1);
        .

+!new_order(ID)
    <-  .print("new order: n. ", ID);
        addFact(order(ID));
        .wait(50000);
        !new_order(ID+1);
        .

{ include("$jacamo/templates/common-cartago.asl") }
{ include("$jacamo/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moise/asl/org-obedient.asl") }
