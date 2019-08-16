//: Playground - noun: a place where people can play

import UIKit

let number = 200

var isPrime = true

if number == 1{
    isPrime = false
}

var i = 2

while i < number {
    
    if number % i == 0 {
        
        isPrime = false
    }
    
    i += 1
}

print(isPrime)



//@IBOutlet var numberInput: UITextField!

//@IBOutlet var resultLabel: UILabel!

//@IBAction func pressButton(_ sender: Any) {
    
    //var numberInputInt = Int(numberInput.text!)
    
   // if numberInputInt / 1 && numberInputInt / numberInputInt {
       // resultLabel.text = //"Yes it is prime!"
   // }else {
     //   resultLabel.text = " No it is not prime!"
   // }
    
    
//}