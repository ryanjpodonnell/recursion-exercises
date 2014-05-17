int exponent1(int base, int n) {
	if (n == 0)
		return 1;
	else
		return (base * exponent1(base, n - 1));
}