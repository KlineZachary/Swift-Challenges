//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var output: [Int] = []
//
//        for i in 0..<nums.count{
//            let num = nums[i]
//            let next = i + 1
//            for j in next..<nums.count{
//                let numTwo = nums[j]
//                if num + numTwo == target{
//                    output.append(contentsOf: [i,j])
//                    break
//                }
//            }
//        }
//        return output
//    }
//}
//


//Quicker Solution
 
 
 class Solution {
     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
         var result = [Int](), seen = [Int: Int]()
         for (i, num) in nums.enumerated() {
             if let prevIndex = seen[num] {
                 result = [prevIndex, i]; break
             }
             seen[target - num] = i
         }
         return result
     }
 }
 
 var output = Solution()
 print(output.twoSum([3,2,4], 6))
 
 
 
 
