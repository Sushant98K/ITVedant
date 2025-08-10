
var a = 12
let b = 13
console.info("Outside"+a)
console.info("Outside" + b);
{
    var a = 15
    let b = 26
    console.info("Inside" + a);
    console.info("Inside" + b);  
    
}
console.info("Outer Outside" + a)
console.info("Outer Outside" + b);
