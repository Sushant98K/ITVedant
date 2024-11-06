function primeornot(num) {
    let i, flag = true;
    for (i = 2; i <= num - 1; i++) {
        if (num % i == 0) {
            flag = flase;
            break;
        }
    }
    if (flag == true) {
        console.log(num + " is prime number");
    }
    else {
        console.log(num + " is not prime number");
    }
}

primeornot(13);
primeornot(22);