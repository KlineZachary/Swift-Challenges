class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var output: [Int] = []
        
        for i in 0..<nums.count{
            let num = nums[i]
            let next = i + 1
            for j in next..<nums.count{
                let numTwo = nums[j]
                if num + numTwo == target{
                    output.append(contentsOf: [i,j])
                    break
                }
            }
        }
        return output
        
    }
}
var test = Solution()
print(test.twoSum([2, 7, 11, 15], 9))
