import java.util.*;

public class fib {
	
	public static int[] fibs(int len) {
		int[] arr = new int[len];

		for (int i = 0; i < len; i++) {
			if (i < 2) { 
				arr[i] = i; 
			} else { 
				arr[i] = arr[i - 1] + arr[i - 2]; 
			}
		}

		return arr;
	}
	
	public static void main(String[] args) {
		int[] arr = fibs(8);

		System.out.println(Arrays.toString(arr));
	} 
}