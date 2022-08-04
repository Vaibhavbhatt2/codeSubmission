package submission;

import java.util.Arrays;

public class binarySearch {
	public static void binarySearch1(int arr[],int first,int last ,int key) {
		int mid=(first+last)/2;
		
		while(first<=last) {
			if(arr[mid]==key) {
				System.out.println("Element found at index: "+ mid);
				break;
			}else if(arr[mid]<key) {
				first=mid+1;
			}else {
				last=mid-1;
			}
		}
		mid=(first+last)/2;
		 if ( first > last ){  
		      System.out.println("Element is not found!");  
		   }  
		
	}

	public static void main(String[] args) {
		int arr[]= {3,7,9,12,56,88,90};
		Arrays.sort(arr);
		
		int first=0;
		int last=arr.length-1;
		
		binarySearch1(arr,first,last,88);
	}

}
