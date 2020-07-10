//Alice has a hand of cards, given as an array of integers.
//
//Now she wants to rearrange the cards into groups so that each group is size W, and consists of W consecutive cards.
//
//Return true if and only if she can.


//NOT DONE
//class Solution {
//    func isNStraightHand(_ hand: [Int], _ W: Int) -> Bool {
//        var hand = hand
//        var dict : [Int: Int] = [:]
//        if hand.count % W != 0 {return false}
//        hand.sort()
//
//        for num in hand{
//            dict[num] = (dict[num] ?? 0) + 1
//        }
//
//        var dictSortByKey = dict.sorted(by: {$0.key < $1.key} )
//        while (dictSortByKey.count > 0){
//            if let firstKey = dictSortByKey.first?.key{
//                for i in firstKey..<firstKey + W{
//                    guard let nextNum = dict[firstKey] else{
//                        return false
//                    }
//                    var count = dict[firstKey]
//
//                }
//            }
//
//
//
//
//        }
//
//
//        return true
//    }
//}
//
//let output = Solution()
//print(output.isNStraightHand([1,2,3,6,2,3,4,7,8], 3))
var hello = "dddf"
var charArray = String(hello.reversed())
print(charArray)
