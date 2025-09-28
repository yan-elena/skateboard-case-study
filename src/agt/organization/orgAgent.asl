// Agent sample_agent in project main

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : true
    <-  .print("hello world.");
        debug(inspector_gui(on));
        !setup_reg;
        .

//connect norms to institution
+!setup_reg: focusing(RegArt,regArt,_,_,reg,_)
    <-  load("src/reg/dom_regulative.npl");
        .print("domain regulations loaded").

 +!setup_reg
     <-  .wait(focusing(A,_,_,B,inst_reg,_)&focusing(ArtSai,inst_reg_art,_,_,inst_reg,_) & focusing(RegArt,regArt,_,_,reg,_));
         !setup_reg.




//connect norms to institution
+!setup_sai: focusing(ArtSai,inst_reg_art,_,_,inst_reg,_) & focusing(RegArt,regArt,_,_,reg,_)
    <-  getSaiEngine(SE)[artifact_id(ArtSai)];
        setInstitution(SE)[artifact_id(RegArt)];
        load("src/reg/domain_regulative.npl").

+!setup_sai
    <-  .wait(focusing(A,_,_,B,inst_reg,_)&focusing(ArtSai,inst_reg_art,_,_,inst_reg,_) & focusing(RegArt,regArt,_,_,reg,_));
        !setup_sai.


{ include("$jacamo/templates/common-cartago.asl") }
{ include("$jacamo/templates/common-moise.asl") }

// uncomment the include below to have an agent compliant with its organisation
//{ include("$moise/asl/org-obedient.asl") }
