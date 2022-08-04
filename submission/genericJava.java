package submission;


class Students<X,Y>{
	
	public X name;
	public Y stream;
	
	public Students(X name,Y stream) {
		this.name=name;
		this.stream=stream;
	}
	
	public void speak() {
		System.out.print("Name is: " + name+ " and studying " + stream);
	}
}

public class genericJava {

	public static void main(String[] args) {
		
		Students<String,String>data=new Students<String,String>("Vaibhav","PCM");
		
		data.speak();

	}

}