//Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
//
//You may assume that the array is non-empty and the majority element always exist in the array.
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var countNums : [Int:Int] = [:]
        var maxNum = 0
        var output = 0
        
        for num in nums{
            countNums[num] = (countNums[num] ?? 1) + 1
        }
        
        for (key, value) in countNums{
            if value > maxNum{
                output = key
                maxNum = value
            }
        }
        return output
    }
}

let majElement = Solution().majorityElement([2,2,1,1,1,2,2])
print(majElement)
