// Find Armstrong number
let n = 153;
let sum = 0;
let str = n.toString();
for (i = 0; i < str.length; i++) {
  sum += Math.pow(str[i], 3);
}
n == sum
  ? console.log(`${n} is Armstrong number`)
  : console.log(`${n} is not an Armstrong number`);
