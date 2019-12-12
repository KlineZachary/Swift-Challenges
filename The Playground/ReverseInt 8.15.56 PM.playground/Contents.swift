import Foundation

func reverse(_ x: Int) -> Int {
    let input = abs(x)
    if Int(String(String(input).reversed()))! > 2147483649 { return 0 }
    return x >= 0 ? Int(String(String(input).reversed()))! : Int(String(String(input).reversed()))! * (-1)
}
print(reverse(120))

//Fast method below
//func reverse(_ x: Int) -> Int {
//    var x = x
//    var num = 0
//
//    while x != 0 {
//        var digit = x%10
//        x /= 10
//        num = num * 10 + digit
//    }
//
//    return num > Int32.max || num < Int32.min ? 0 : num
//}
 
