package submission;

import java.util.Optional;
import java.util.function.Predicate;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class Answers {

	public static void main(String[] args) {
		 Predicate < String > notNull =
		            ((Predicate < String > )(arg - > arg == null)).negate(); // #1
		        System.out.println(notNull.test(null));

	}

}
