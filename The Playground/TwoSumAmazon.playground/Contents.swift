class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap : [Int:Int] = [:]        
        for i in 0..<nums.count{
            let difference = target - nums[i]
            if let value = hashMap[difference]{
                return [value, i]
            }else{
                hashMap[nums[i]] = i
            }
           
        }
        return []
    }
}
var test = Solution()
print(test.twoSum([2, 7, 11, 15], 9))
