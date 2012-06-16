package {
    import asunit.textui.TestRunner;
    
    public class AsUnitHamcrestRunner extends TestRunner {

        public function AsUnitHamcrestRunner() {
            start(AllHamcrestTests);
        }
    }
}
