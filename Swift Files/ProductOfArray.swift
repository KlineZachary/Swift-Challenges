// Given an array nums of n integers where n > 1,  return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

// Example:

// Input:  [1,2,3,4]
// Output: [24,12,8,6]
// Constraint: It's guaranteed that the product of the elements of any prefix or suffix of the array (including the whole array) fits in a 32 bit integer.

// Note: Please solve it without division and in O(n).

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var output : [Int] = []
        var leftProducts : [Int] = []
        var rightProducts : [Int] = []

        for i in 0..<nums.count{
            leftProducts.append(0)
            rightProducts.append(0)
        }

        leftProducts[0] = 1
        rightProducts[nums.count - 1] = 1

        for i in 1..<nums.count{
            leftProducts[i] = nums[i - 1] * leftProducts[i - 1]
        }

        for i in (0...nums.count - 2).reversed(){
            rightProducts[i] = nums[i + 1] * rightProducts[i + 1]
        }

        for i in 0..<leftProducts.count{
            output.append(leftProducts[i] * rightProducts[i])

        }
        return output
    }
}

print(Solution().productExceptSelf([1,2,3,4]))
