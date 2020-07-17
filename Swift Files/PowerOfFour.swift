import Foundation
func isPowerOfFour(_ num: Int) -> Bool {
    if (Double(log(Float80(num)) / log(4))).truncatingRemainder(dividingBy: 1) == 0 {
      return true
    } else {
      return false
    }
}

