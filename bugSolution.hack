function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x < 0 || x > 12) { // Added bounds checking
    return 0; // Handle out-of-bounds inputs gracefully
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  var sum = 0;
  var i = 1;
  while (i <= x) {
    sum += i;
    i++;
  }
  return sum; // Iterative approach
}

function main(): void {
  var x = 5;
  var y = foo(x);
  var z = bar(x);
  echo y; // Expected Output: 120
  echo z; // Expected Output: 15
}
