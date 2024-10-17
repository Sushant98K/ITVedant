function isPalindrome(str) {
  // Convert to lowercase
  const cleanedStr = str.toLowerCase();

  // Compare the cleaned string with its reverse
  cleanedStr === cleanedStr.split("").reverse().join("")
    ? console.log(`"${input}" is a palindrome.`)
    : console.log(`"${input}" is not a palindrome.`);
}

const input = prompt("Enter A String");
isPalindrome(input);
