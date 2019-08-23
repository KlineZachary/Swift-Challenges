import Foundation
func heightChecker(_ heights: [Int]) -> Int {
    var wrongHeights = 0
    let sortedHeights = heights.sorted()
    for i in 0..<heights.count{
        if heights[i] != sortedHeights[i] {wrongHeights+=1}
    }
    return wrongHeights
}
print(heightChecker([1,1,4,2,1,3]))

