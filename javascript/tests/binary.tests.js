describe('binarySearch', function() {
	var odd_length_arr = [2,4,5,6,7,9,12];
	var even_length_arr = [0,1,2,3,4,5,6,7,8,9];
	
	it('should return the index of the target', function() {
		expect(binarySearch(odd_length_arr, 4)).toEqual(1);
		expect(binarySearch(odd_length_arr, 5)).toEqual(2);
		expect(binarySearch(odd_length_arr, 6)).toEqual(3);
		expect(binarySearch(odd_length_arr, 7)).toEqual(4);
		expect(binarySearch(odd_length_arr, 9)).toEqual(5);
		
		expect(binarySearch(even_length_arr, 1)).toEqual(1);
		expect(binarySearch(even_length_arr, 2)).toEqual(2);
		expect(binarySearch(even_length_arr, 3)).toEqual(3);
		expect(binarySearch(even_length_arr, 4)).toEqual(4);
		expect(binarySearch(even_length_arr, 5)).toEqual(5);
		expect(binarySearch(even_length_arr, 6)).toEqual(6);
		expect(binarySearch(even_length_arr, 7)).toEqual(7);
		expect(binarySearch(even_length_arr, 8)).toEqual(8);
	});
	
	it('should work if the target is already the middle point', function() {
		expect(binarySearch(odd_length_arr, 6)).toEqual(3);
	});
	
	it('should correctly return the indices of targets at the edges', function() {
		expect(binarySearch(odd_length_arr, 2)).toEqual(0);
		expect(binarySearch(odd_length_arr, 12)).toEqual(6);		
		
		expect(binarySearch(even_length_arr, 0)).toEqual(0);
		expect(binarySearch(even_length_arr, 9)).toEqual(9);
	});
	
	it('should return null if the target does not exist in the array', function() {
		expect(binarySearch(even_length_arr, 35)).toEqual(null);
	});
	
	it('should return null if the given array is empty', function() {
		expect(binarySearch([], 3)).toEqual(null);
	})
});