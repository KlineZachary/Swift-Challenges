class Solution {
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        let startTimes = intervals.map { interval in interval[0] }.sorted()
        let endTimes = intervals.map { interval in interval[1] }.sorted()
        var output = 0
        var startingIndex = 0
        var endingIndex = 0

        if intervals.count == 0 {return output}
        while startingIndex < startTimes.count && endingIndex < endTimes.count{
            if startTimes[startingIndex] < endTimes[endingIndex]{
                output += 1
            }else{
                endingIndex += 1
            }
            startingIndex += 1
        }
        return output
    }

}

print(Solution().minMeetingRooms([[0, 30],[5, 10],[15, 20]]))