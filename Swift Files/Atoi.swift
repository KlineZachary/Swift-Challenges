// Implement atoi which converts a string to an integer.

// The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character, takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.

// The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.

// If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.

// If no valid conversion could be performed, a zero value is returned.

// Note:

//     Only the space character ' ' is considered as whitespace character.
//     Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. If the numerical value is out of the range of representable values, INT_MAX (231 − 1) or INT_MIN (−231) is returned.
import Foundation
func myAtoi(_ str: String) -> Int {
    var output = ""
    var intOutput = 0
    var isNegative = false
    var str = str

    str = str.trimmingCharacters(in: .whitespaces)

    if !str[str.startIndex].isNumber && str[str.startIndex] != "-"  {return 0}
    if str[str.startIndex] == "-" {isNegative = true}

    for i in 0..<str.count{
        var index = str.index(str.startIndex, offsetBy: i)
        var char = str[index]
        
        if char.isNumber{
            output.append(char)
        }
    }

    if let num = Int(output){
        intOutput = num
        // if num < Int(pow(Double(-2),Double(31))) {intOutput = -2147483648}
        if num > Int(pow(Double(2),Double(31))) - 1 {intOutput = Int(pow(Double(2),Double(31))) - 1}
        if isNegative{intOutput *= -1}
    }else{
        intOutput = Int(output)!
    }

    return intOutput
}

print(myAtoi("-91283472332"))
