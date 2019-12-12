func missingNumber(_ nums: [Int]) -> Int {
    var output = 0
    var array = nums
    array.sort()

    for i in 0..<array.count{
        if array[i] != i + 1 {output = i + 1}
        else {
            output = i
            break
        }
    }
    return output
}
print(missingNumber([3,0,1]))
