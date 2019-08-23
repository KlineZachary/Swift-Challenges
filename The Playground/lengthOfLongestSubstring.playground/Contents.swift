import Foundation
func lengthOfLongestSubstring(_ s: String) -> Int {
    var dict = [Character:Int]()
    var maxL = 0
    var lastRepeatPos = -1
    var i = 0
    
    for c in s {
        if (dict[c] != nil) && (dict[c]! > lastRepeatPos) {
            lastRepeatPos = dict[c]!
        }
        
        maxL = max(i - lastRepeatPos, maxL)
        dict[c] = i
        i += 1
    }
    return maxL
}
print(lengthOfLongestSubstring("pwwkew"))
