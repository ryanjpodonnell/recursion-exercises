function binarySearch(arr, target) {
	var mid = Math.floor(arr.length / 2);
	if (arr[mid] === target) {
		return mid;
	} else if (target < arr[mid]) {
		var lowerHalf = arr.slice(0, mid);
		return binarySearch(lowerHalf, target);
	} else {
		var upperHalf = arr.slice(mid, arr.length);
		return mid += binarySearch(upperHalf, target);
	}
}

// var arr = [2,4,5,6,7,9,12];
// console.log(binarySearch(arr, 9));