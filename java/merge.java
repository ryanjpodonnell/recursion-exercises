import java.util.*;

public class merge {
	
	public static int[] merge(int[] left, int[] right) {
		int totalLen = left.length + right.length;
		int[] sortedArr = new int[totalLen];
		int i = 0;
		int j = 0;
		
		while (i + j < totalLen) {
			int k = i + j;
			
			if (j > right.length - 1) {
				sortedArr[k] = left[i];
				i++;
			} else if (i > left.length - 1) {
				sortedArr[k] = right[j];
				j++;
			} else if (left[i] < right[j]) {
				sortedArr[k] = left[i];
				i++;
			} else if (left[i] > right[j]) {
				sortedArr[k] = right[j];
				j++;
			}
		}

		return sortedArr;
	}
	
	public static int[] mergeSort( int[] arr ) {
		if (arr.length < 2) {
			return arr;
		}
		int mid = arr.length / 2;
		int[] left = Arrays.copyOfRange(arr, 0, mid);
		int[] right = Arrays.copyOfRange(arr, mid, arr.length);
		return merge(mergeSort(left), mergeSort(right));
	}
	
	public static void main(String[] args) {
		int[] arr = { 2,5,3,6,1,8,0 };

		int[] sorted = mergeSort(arr);
		System.out.println(Arrays.toString(sorted));
	} 
}