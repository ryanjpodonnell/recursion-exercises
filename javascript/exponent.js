function exp(base, n) {
	if (n === 0) { return 1 }
	return base * exp(base, n - 1);
}

function exp2(base, n) {
  if (n === 0) { return 1 }
	var num;
  if (n % 2 === 0) {
    num = exp2(base, n/2);
    return num * num;
  } else {
    num = exp2(base, (n - 1) / 2);
    return base * num * num;
  }
}

// console.log(exp(3, 8));
// console.log(exp2(3, 8));