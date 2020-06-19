//import Foundation
//NOT DONE
//class Solution {
//    func myAtoi(_ str: String) -> Int {
//        var strOutput = "0"
//        var isNegative = false
//        var chagngedSign = false
//        for char in str{
//            if !chagngedSign{
//                if char == "-"{
//                    isNegative = true
//                    chagngedSign = true
//                    continue
//                }else if char == "+"{
//                    isNegative = false
//                    chagngedSign = true
//                    continue
//                }
//
//            }
//            if char.isLetter || char == "." || char.isSymbol || char.isMathSymbol || char == "-" || char == "+"{
//                break
//            }else if char.isWhitespace{
//
//                continue
//            }else if char.isNumber{
//                strOutput.append(char)
//            }
//        }
//
//        if let intStr = Int(strOutput){
//            var output = intStr
//            if isNegative {output *= -1}
//            if output > 2 << 30 - 1 {return 2 << 30 - 1}
//            else if output < -2 << 30 {return -2 << 30}
//            return output
//        }else{
//            return 0
//        }
//    }
//}
//
//
//
//var myClass = Solution()
//var output = myClass.myAtoi("+2")
//print(output)
