import Foundation
func isAnagram(_ s: String, _ t: String) -> Bool {
    let s = s
    let t = t
    let sSorted = s.sorted()
    let tSorted = t.sorted()
    if sSorted.count != tSorted.count {return false}
    for i in 0..<sSorted.count{
        if sSorted[i] != tSorted[i] {return false}
    }
    return true
}
print(isAnagram("ab", "a"))

//Faster answer
//func isAnagram(_ s: String, _ t: String) -> Bool {
//    guard s.count == t.count else {return false}
//    var hashTable1 = [Character: Int]()
//    var hashTable2 = [Character: Int]()
//    s.forEach { hashTable1[$0, default: 0] += 1 }
//    t.forEach { hashTable2[$0, default: 0] += 1 }
//    return hashTable1 == hashTable2
//}

