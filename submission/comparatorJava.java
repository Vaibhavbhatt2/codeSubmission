package submission;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

class StudentData{
	 
    int rollno;
    String name, address;
 
    public StudentData(int rollno, String name, String address)
    {
 
        this.rollno = rollno;
        this.name = name;
        this.address = address;
    }
 
    public String toString()
    {
 
        // Returning attributes of Student
        return this.rollno + " " + this.name + " "
            + this.address;
    }
}
 
class Sortbyroll implements Comparator<StudentData> {
 
    public int compare(StudentData a, StudentData b)
    {
 
        return a.rollno - b.rollno;
    }
}
 
class Sortbyname implements Comparator<StudentData> {
 
    public int compare(StudentData a, StudentData b)
    {
 
        return a.name.compareTo(b.name);
    }
}

public class comparatorJava {

	public static void main(String[] args) {

        ArrayList<StudentData> ar = new ArrayList<StudentData>();
 
        ar.add(new StudentData(111, "Mayank", "Kashmir"));
        ar.add(new StudentData(131, "Anshul", "Delhi"));
        ar.add(new StudentData(121, "Solanki", "Punjab"));
        ar.add(new StudentData(101, "Aggarwal", "Gujarat"));
 
        System.out.println("Unsorted");
 
        for (int i = 0; i < ar.size(); i++)
            System.out.println(ar.get(i));
 
        Collections.sort(ar, new Sortbyroll());
 
        System.out.println("\nSorted by rollno");
 
        // iterating over entries to print them
        for (int i = 0; i < ar.size(); i++)
            System.out.println(ar.get(i));
 
        // Sorting student entries by name
        Collections.sort(ar, new Sortbyname());
 
        System.out.println("\nSorted by name");
        
        
        for (int i = 0; i < ar.size(); i++)
            System.out.println(ar.get(i));
	}

}
