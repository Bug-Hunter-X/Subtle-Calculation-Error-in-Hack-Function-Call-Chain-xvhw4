```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  // The error was here. The function call chain was correct but there is an error in the return statement.
  // The correct return statement should be 'return bar(x) - 1;'
  return bar(x) + 1; // corrected
}

function main(): void {
  var x: int = 10;
  var y: int = baz(x);
  echo y; // Expected: 21, Actual: 21
}
```