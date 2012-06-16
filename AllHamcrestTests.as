package {
    import asunit.framework.TestSuite;

    public class AllHamcrestTests extends TestSuite {

        public function AllHamcrestTests() {
            addTest(new HamcrestAssertTest());
        }
    }
}
