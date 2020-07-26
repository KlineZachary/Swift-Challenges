func findPalindromes(_ input: String) -> [String]{
    var output: [String] = []
    
    for i in 0..<input.count{
        var firstIndex = input.index(input.startIndex, offsetBy: i)

        for j in i + 1..<input.count{
            var secondIndex = input.index(input.startIndex, offsetBy: j)
            var subString = String(input[firstIndex...secondIndex])

            if subString == String(subString.reversed()){
                output.append(subString)
            }
        }
    }
    return output
}

print(findPalindromes("aafdsfadsaf"))