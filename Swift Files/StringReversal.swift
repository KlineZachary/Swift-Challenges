func reverseString(_ s: String) -> String{
    var output = ""

    for i in (0...s.count - 1).reversed(){
        let stringIndex = s.index(s.startIndex, offsetBy: i)
        output.append(s[stringIndex])
    }
    return output
}


print(reverseString("Racecar"))