func increasingTriplet(_ nums: [Int]) -> Bool {
    var small = Int.max
    var big = Int.max
    for number in nums{
        if number <= small{small = number}
        else if number <= big {big = number}
        else {return true}
    }
    return false
}
print(increasingTriplet([1,1,1,1,1]))
