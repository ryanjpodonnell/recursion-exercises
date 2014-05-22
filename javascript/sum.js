function iterSum(arr) {
	var total = 0;
	for (var i = 0; i < arr.length; i++) {
		total += arr[i];
	}
	return total;
}

function argIterSum() {
	var total = 0;
	for (var i = 0; i < arguments.length; i++) {
		total += arguments[i];
	}
	return total;
}

function recursSum(arr) {
	if (arr.length === 0) { return 0 }
	else if (arr.length === 1) { return arr[0] }
	else { return arr.pop() + recursSum(arr)}
}

function argSum() {
	var args = [].slice.call(arguments, 0)
	return recursSum(args);
}

// console.log(argSum(1,2,3,4,5))