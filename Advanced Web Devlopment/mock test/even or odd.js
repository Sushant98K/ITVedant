// find out given number even or odd numbers

let number = 10;
if (number % 2 == 0) {
  console.log(number + " is an even number");
} else {
  console.log(number + " is an odd number");
}

//   using ternary operator

const evenOdd = (n) => (n % 2 == 0 ? `${n} is even` : `${n} is odd`);
console.log(evenOdd(number));