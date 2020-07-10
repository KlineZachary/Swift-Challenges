//NOT Done
//import Foundation
//class Solution {
//    func containsNearbyAlmostDuplicate(_ nums: [Int], _ k: Int, _ t: Int) -> Bool {
//        var map : [Int:Int] = [:]
//        for i in 0..<nums.count{
//            map[i] = nums[i]
//            for (key, value) in map{
//                if abs(i - key) <= k && abs(map[i]! - value) <= t && key != i{
//                    return true
//                }
//
//
//            }
//
//        }
//        return false
//    }
//}
//
//var output = Solution()
//print(output.containsNearbyAlmostDuplicate([10,100,200,9,0,11], 2, 2))
//
