function fact(n) {
  // if (n == 0 || n == 1) {
  //   return 1;
  // } else {
  //   return n * fact(n - 1);
  // }

  return n == 0 || n == 1 ? 1 : n * fact(n - 1);
}

console.log(fact(5));
