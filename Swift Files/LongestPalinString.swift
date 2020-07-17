class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count == 0 {return ""}
        var longestPalindrome = ""
        var palindromes : [String : Int] = [:]
    
        for i in 0..<s.count{
            var tempString = String(s[s.index(s.startIndex, offsetBy: i)])
            for j in i+1..<s.count{
                tempString.append(s[s.index(s.startIndex, offsetBy: j))])
                if (tempString == String(tempString.reversed())){
                    palindromes[tempString] = tempString.count
                }
            }


        }

        return longestPalindrome
    }
}

print(Solution().longestPalindrome("babad"))