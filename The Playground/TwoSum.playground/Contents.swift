func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0 ..< nums.count{
        let firstNum = nums[i]
        for j in nums.index(after: i) ..< nums.count{
            let secondNum = nums[j]
            let sum = firstNum + secondNum
            if sum == target {return [i,j]}
        }
    }
    return [-1]
}
print(twoSum([3,2,3],6))


