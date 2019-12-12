import Foundation
func firstUniqChar(_ s: String) -> Int {
    var dict = [Character : Int]()
    for i in s {dict[i] = dict[i] != nil ? dict[i]! + 1 : 1}
    for (index,char) in s.enumerated() {
        if let value = dict[char]
        {
            if value == 1{return index}
        }
    }
    
    return -1
}
