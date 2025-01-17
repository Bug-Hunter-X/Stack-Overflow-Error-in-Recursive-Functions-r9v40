function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    return x + bar(x - 1);
  }
}

function main(): void {
  var x = 5;
  var y = foo(x);
  var z = bar(x);
  echo y; // Expected Output: 120
  echo z; // Expected Output: 15
}
