import cartago.Artifact;
import cartago.OPERATION;

public class WkArtifact extends Artifact {

    @OPERATION
    void installTrunk() {
        log("operation install trunk started...");
        try {
            wait(1800);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        log("operation install trunk completed...");
    }

    @OPERATION
    void assemblyWheel() {
        log("operation assembly wheel started...");
        try {
            wait(8000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        log("operation assembly wheel completed...");
    }

    @OPERATION
    void torqueTrunk() {
        log("operation torque trunk started...");
        try {
            wait(2000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        log("operation torque trunk completed...");
    }
}
