class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var output : [String] = []
        generate(&output,"",0,0,n)
        return output
    }

    func generate(_ output: inout [String],_ parenString: String,_ openParen: Int, _ closeParen : Int,_ maxPairs: Int){
        if(parenString.count == maxPairs * 2){
            output.append(parenString)
            return
        }
        if (openParen < maxPairs){
            generate(&output, parenString + "(", openParen + 1, closeParen, maxPairs)
        }
        if (closeParen < openParen){
            generate(&output, parenString + ")", openParen, closeParen + 1, maxPairs)
        }
    }
}
print(Solution().generateParenthesis(3))

