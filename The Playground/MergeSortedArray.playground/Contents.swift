func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var output : [Int] = []
    for i in 0..<m{output.append(nums1[i])}
    for i in 0..<n{output.append(nums2[i])}
    output.sort()
    nums1 = output
//    print(nums1)
}

//Test Case
//var array = [1,2,3,0,0,0]
//merge(&array, 3, [2,5,6], 3)


