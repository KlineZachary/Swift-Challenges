import Foundation

//Easy way but may not be allowed in interview-------------
//func reverseString(_ s: [Character]) -> [Character] {
//    var newArr = s
//    return newArr.reversed()
//}
//print(reverseString(["h","e","l","l","o"]))


//Another way
//func reverseString(_ s: [Character]) -> [Character] {
//    var num = 0
//    var newArray = s
//    for i in (0 ..< s.count).reversed(){
//        newArray[num] = s[i]
//        num += 1
//    }
//    return newArray
//}
//print(reverseString(["h","e","l","l","o"]))


