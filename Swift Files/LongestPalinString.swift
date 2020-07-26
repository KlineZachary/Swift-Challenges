class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count == 0 {return ""}
        var start = 0
        var end = s.count - 1

        while(end - start >= 0){
            var startIndex = s.index(s.startIndex,offsetBy: start)
            var endIndex = s.index(s.startIndex,offsetBy: end)
            var subString = String(s[startIndex...endIndex])

            if subString == String(subString.reversed()){
                return subString
            }
            start += 1
            end -= 1
        }
        return ""
    }
}

print(Solution().longestPalindrome("racecar"))