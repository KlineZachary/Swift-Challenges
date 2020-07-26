func firstNonRepeatingChar(_ s: String) -> Character{
    if s.count == 0 {return " "}
    var dict: [Character : Int] = [:]

    s.forEach{ char in
        (dict[char, default: 0]) += 1
    }

    for i in 0..<s.count{
        let index = s.index(s.startIndex, offsetBy: i)
        let char = s[index]
        if dict[char] == 1{
            return char
        }
    }
    return " "
}
print(firstNonRepeatingChar("aaaaakdjdjdjnfd"))