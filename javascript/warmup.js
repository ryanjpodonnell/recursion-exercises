
Array.prototype.myEach = function(func) {
	for (var i = 0; i < this.length; i++) {
		func(this[i]);
	}

	return this;
};

console.log(NUMS.myEach(function(element){
	console.log(element * 2)
}));


Array.prototype.myMap = function(func) {
	var mappedArray = [];

	this.myEach(function(element) {
		mappedArray.push(func(element));
	});

	return mappedArray;
};

console.log(NUMS.myMap(function(el) {
	return el * 2;
}));


Array.prototype.myInject = function(func) {
	var result = this[0];

	this.slice(1).myEach(function(element) {
		result = func(result, element);
	});

	return result;
};

console.log(NUMS.myInject(function(total, item) {
	return total + item;
}));


Array.prototype.transpose = function() {
  var columns = [];
  for (var i = 0; i < this[0].length; i++) {
    columns.push([]);
  }

  for (var i = 0; i < this.length; i++) {
    for (var j = 0; j < this[i].length; j++) {
      columns[j].push(this[i][j]);
    }
  }

  return columns;
};

console.log([[0, 1, 2], [3, 4, 5], [6, 7, 8]].transpose());


Array.prototype.bubbleSort = function () {
  var isSorted = false;

  while (!isSorted) {
    isSorted = true;
    for (var i = 0; i < (this.length - 1); i++) {
      if (this[i] > this[i + 1]) {
        var tmp = this[i];
        this[i] = this[i + 1];
        this[i + 1] = tmp;

        isSorted = false;
      }
    }
  }

  return this;
};


String.prototype.substrings = function () {
  var substrings = [];

  for (var start = 0; start < this.length; start++) {
    for (var len = 1; (start + len) <= this.length; len++) {
      substrings.push(this.slice(start, start + len));
    }
  }

  return substrings;
};