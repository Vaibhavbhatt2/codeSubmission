package submission;

import java.util.ArrayList;

public class arrayList {

	public static void main(String[] args) {
		 ArrayList<String> student=new ArrayList<String>();    
	      student.add("Vaibhav");  
	      student.add("PCM");
	      student.add("Batch ");

	      System.out.println(student);
	      
	      student.remove(2);
	      
	      System.out.println(student);

	      
	      student.clear();
	      
	      System.out.println(student);

	      
	}

}
