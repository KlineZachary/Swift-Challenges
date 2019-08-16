import Foundation

//Find the number that is not duplicated

//func singleNumber(_ nums: [Int]) -> Int {
//    var hashTable : [Int: Int] = [:]
//    for number in nums{
//        if hashTable.keys.contains(number){
//            var value : Int = hashTable[number]!
//            value += 1
//            hashTable.removeValue(forKey: number)
//            hashTable[number] = value
//        }else{
//            hashTable[number] = 1
//        }
//    }
//
//    for item in hashTable{
//        if item.value == 1 {
//            return item.key
//        }
//    }
//    return -1
//}
//
//print(singleNumber([4,1,2,1,2]))

//Fast Solution
func singleNumber(_ nums: [Int]) -> Int {
    var result = 0
    for i in nums {result = result ^ i}
    return result
}

print(singleNumber([2,2,1]))

