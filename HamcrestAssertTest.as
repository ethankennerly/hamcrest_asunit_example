package {
	import asunit.framework.TestCase;
	import org.hamcrest.assertThat;
	import org.hamcrest.core.describedAs;
	import org.hamcrest.core.not;
	import org.hamcrest.number.between;
	import org.hamcrest.object.equalTo;
	
    public class HamcrestAssertTest extends TestCase {
        
		/**
		 * AsUnit detects function names beginning with 'test'.
		 */
		public function testBetweenInclusive() : void {
			assertThat(3, between(2, 4));   
			assertThat(4, not(between(2, 3)));
			assertThat(2.5, not(between(2, 3)));  // example of a failure
		}
		
		/**
		 * Copied from org.hamcrest.object.IsEqualTest.as
		 * AsUnit detects function names beginning with 'test'.
		 */
		public function testRecursivelyTestsElementsOfArrays() : void {
			var i1 : Array = [[1, 2], [3, 4]];
			var i2 : Array = [[1, 2], [3, 4]];
			var i3 : Array = [[5, 6], [7, 8]];
			var i4 : Array = [[1, 2, 3, 4], [3, 4]];

			assertThat(i1, equalTo(i1));
			assertThat(i2, equalTo(i1));
			assertThat(i3, not(equalTo(i1)));
			assertThat(i4, not(equalTo(i1)));
			assertThat(i4, equalTo(i1));  // example of a failure
		}
    }
}
