import Foundation

//Fewest line of code
//func removeDuplicates(_ nums: inout [Int]) -> Int {
//    nums = Array(Set(nums))
//    nums.sort()
//    return nums.count
//}
//var passArray = [0,0,1,1,1,2,2,3,3,4]
//print(removeDuplicates(&passArray))

// Fast Solution
 func removeDuplicates(_ nums: inout [Int]) -> Int {
     if nums.count == 0 { return 0 }
     var j = 0
     for i in 1..<nums.count {
         if nums[j] != nums[i] {
             j += 1
             nums[j] = nums[i]
         }
     }
     nums = Array(nums[...j])
     return nums.count
 }
 
var passArray = [0,0,1,1,1,2,2,3,3,4]
print(removeDuplicates(&passArray))


