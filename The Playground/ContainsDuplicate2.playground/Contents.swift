import Foundation
func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var set = Set<Int>()
    for i in 0..<nums.count {
        if i > k { set.remove(nums[i - k - 1]) }
        if !set.insert(nums[i]).inserted  { return true }
    }
    return false
}
print(containsNearbyDuplicate([1,2,3,1,2,3], 2))
