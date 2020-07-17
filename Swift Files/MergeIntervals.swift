class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let sorted = intervals.sorted{$0[0] < $1[0]}
        var output = [[Int]]()

        for interval in sorted{
            if let last = output.last{
                if !(interval[0] > last[1]){
                    output.removeLast()
                    output.append([min(interval[0],last[0]),
                                   max(interval[1],last[1])])
                } else{
                    output.append(interval)
                }
            }else{
                output.append(interval)
            }
        }
        return output
    }
}

print(Solution().merge([[1,3],[2,6],[8,10],[15,18]]))