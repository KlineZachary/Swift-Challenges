class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count == 0 {return true}

        var stack : [Character] = []
        let validDict = [Character(")"): Character("(") , Character("}"): Character("{") , Character("]"): Character("[") ]
    
        for char in s{
            if let opening = validDict[char], opening == stack.last{
                stack.removeLast()
            }else{
                stack.append(char)
            }    
        }

        return stack.isEmpty
    }
}
