class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var output = ""
        var currentIndex = 0
        if strs.isEmpty {return output}
        
        for char in strs[0]{
            for i in 1..<strs.count{
                let nextString = Array(strs[i])
                //index is out of bounds or the character is not the same
                if currentIndex >= strs[i].count || String(nextString[currentIndex]) != String(char){
                    return output
                }
                
            }
            output.append(String(char))
            currentIndex += 1
        }
        return output
    }
}


var someClass = Solution()
print(someClass.longestCommonPrefix(["flower","flow","flight"]))
