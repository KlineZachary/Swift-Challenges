import Foundation

//This is faster than 100% online swift submissions on LeetCode
func containsDuplicate(_ nums: [Int]) -> Bool {
    var nums = nums
    nums.sort{$0 < $1} // This is faster than nums.sort()
    if nums.isEmpty || nums.count == 1{return false}
    for i in 0..<nums.count - 1{
        if nums[i] == nums[i+1]{return true}
    }
    return false
}
print(containsDuplicate([1,1,2]))
