function binarySearch(arr, target) {
	if (arr.length < 1) { return null }
	var mid = Math.floor(arr.length / 2);
	if (arr[mid] === target) {
		return mid;
	} else if (target < arr[mid]) {
		var lowerHalf = arr.slice(0, mid);
		return binarySearch(lowerHalf, target);
	} else {
		var upperHalf = arr.slice(mid + 1, arr.length);
		var index = binarySearch(upperHalf, target);
		if (index === null) { return null }
		return mid + 1 + index;
	}
}

// var arr = [2,4,5,6,7,12];
// for(var i = 0; i < arr.length; i++) {
// 	console.log(binarySearch(arr, arr[i]));
// }
