import Foundation
func moveZeroes(_ nums: [Int]) -> [Int] {
    var new = nums
    var numZeros = 0
    for i in 0 ..< new.count{  //find how many zeros
        if new[i] == 0{
            numZeros += 1
        }
    }
    new = new.filter{$0 != 0} //remove all zeros in array
    for _ in 0 ..< numZeros{new.append(0)} // add zeros to end of array
    return new
}

print(moveZeroes([0,1,0,3,12]))
