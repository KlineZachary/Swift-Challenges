// Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

// Note:

// The solution set must not contain duplicate triplets.

// Example:

// Given array nums = [-1, 0, 1, 2, -1, -4],

// A solution set is:
// [
//   [-1, 0, 1],
//   [-1, -1, 2]
// ]


//Runs most cases but Leetcode says it gets a runtime error on one case
func threeSum(_ nums: [Int]) -> [[Int]] {
    var output: [[Int]] = []
    let nums = nums.sorted()

    for i in 0..<nums.count - 2{
        let iNum = nums[i]
        var left = i + 1
        var right = nums.count - 1

        if iNum == nums[i] - 1{continue}
        while left < right{
            let leftNum = nums[left]
            let rightNum = nums[right]
            let total = iNum + leftNum + rightNum

           
            if total < 0{
                left += 1
            }else if total > 0{
                right -= 1
            }else{
                output.append([iNum,leftNum,rightNum])
                left += 1 
                right -= 1
                break
            }
        }
    }
    return output
}

print(threeSum([-1, 0, 1, 2, -1, -4]))