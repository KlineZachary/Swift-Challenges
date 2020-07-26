//Write a function that accepts a String as its only parameter, and returns true if the string reads
//the same when reversed, ignoring case.

import Foundation
func isPalindrome(s: String) -> Bool{
    let lowercased = s.lowercased()
    var finalString = ""
    
    lowercased.forEach{char in
        if char.isLetter || char.isNumber{
            finalString.append(char)
        }
        
    }
    
    return finalString == String(finalString.reversed())
}


print(isPalindrome(s: "A man, a plan, a canal: Panama"))

