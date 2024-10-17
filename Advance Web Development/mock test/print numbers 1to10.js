function printNo(n) {
  if (n <= 10) {
    console.log(n);
    printNo(n + 1);
  }
}
printNo(1);
