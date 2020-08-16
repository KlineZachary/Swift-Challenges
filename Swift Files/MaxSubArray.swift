class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = Int.min
        var currentSum = 0
        for num in nums{
            var tempSum = currentSum + num
            if num > tempSum{
                currentSum = num
            }else{
                currentSum += num
            }

            if currentSum > maxSum{
                maxSum = currentSum
            }
        }
        return maxSum
    }
}

print(Solution().maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))