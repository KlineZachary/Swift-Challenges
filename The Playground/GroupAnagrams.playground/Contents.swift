class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var output = [[String]]()
        var sortedDict = [String : [String]]()
        for str in strs{
            sortedDict[String(str.sorted()), default: [String]()].append(str)
            
        }
        
        for (_,value) in sortedDict{
            output.append(value)
        }
        
        return output
    }
}

var output = Solution()
print(output.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))
