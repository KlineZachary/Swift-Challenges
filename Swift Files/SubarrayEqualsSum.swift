class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var sum = 0
        var numSumArrays = 0
        var seenSums : [Int : Int]  = [:] //[Seen sum : Num times seen]
        seenSums[0] = 1
        for i in 0..<nums.count{
            sum += nums[i]

            if let value = seenSums[sum - k]{
                numSumArrays += value
            }
            seenSums[sum] = (seenSums[sum] ?? 0) + 1
        }

        return numSumArrays
    }
}

print(Solution().subarraySum([1,2,3], 3))               