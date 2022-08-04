package submission;


interface OddEven{
	public void EvenOdd();
}
public class evenOdd {

	public static void main(String[] args) {
		
		int n=10;
		
		OddEven p=()->{
			if(n%2==0) {
				System.out.print(n+ " is even");
				
			}else {
				System.out.print(n+ " is odd");

			}

		};
		
		p.EvenOdd();
		
		
	}

}
