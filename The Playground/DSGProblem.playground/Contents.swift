import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    var output = 1
    var foundNum = false
    if A.isEmpty {return 1}

    A.sort()
    
    for i in 0..<A.count - 1{
        let num = A[i]
        let nextNum = A[i+1]
        if (num + 1 > 0){
            if num + 1 != nextNum{
                output = num + 1
                foundNum = true
            }else if (!foundNum && i == A.count - 2){
                output = nextNum + 1
            }
        }
        
    }
    return output
}
var array =  [-1, -3]
print(solution(&array))
