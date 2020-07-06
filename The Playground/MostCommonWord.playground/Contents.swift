//Given a paragraph and a list of banned words, return the most frequent word that is not in the list of banned words.  It is guaranteed there is at least one word that isn't banned, and that the answer is unique.
//
//Words in the list of banned words are given in lowercase, and free of punctuation.  Words in the paragraph are not case sensitive.  The answer is in lowercase.
//
import Foundation
class Solution {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        
        var mostCommon = ""
        var wordDict : [String : Int] = [:]
        let words = paragraph.split(separator: " ")
        var maxValue = 0
        for word in words{
            let lowercased = String(word.lowercased())

            if !banned.contains(lowercased){
                wordDict[lowercased, default: 0] += 1
            }
        }
        
        for (key, value) in wordDict{
            if value > maxValue{
                print(key)
                maxValue = value
                mostCommon = key
            }
            
        }
        return mostCommon
    }
}

var output = Solution()
print(output.mostCommonWord("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"]))
