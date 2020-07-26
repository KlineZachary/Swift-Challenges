func romanToInt(_ s: String) -> Int {
    if s.count == 0 {return 0}
    if s.count == 1 {return getNumber(Character(s))}
    var total = 0
    var firstPointer = 0
    var secondPointer = 1

    while firstPointer < s.count{
        var firstIndex = s.index(s.startIndex, offsetBy: firstPointer)
        var secondIndex = s.index(s.startIndex, offsetBy: secondPointer)
        var firstNum = getNumber(s[firstIndex])
        var nextNum = getNumber(s[secondIndex])
        if firstNum < nextNum{
            total += (nextNum - firstNum)
            firstPointer += 2
            secondPointer += 2
        }else{
            total += firstNum
            firstPointer += 1
            secondPointer += 1
        }

        if secondPointer >= s.count{
            secondPointer = s.count - 1
        }
    }
    return total 
}

func getNumber(_ roman: Character) -> Int{
    switch roman{
    case "I":
        return 1
    case "V":
        return 5
    case "X":
        return 10
    case "L":
        return 50
    case "C":
        return 100
    case "D":
        return 500
    case "M":
        return 1000
    default:
        break
    }
    return 0
}

print(romanToInt("D"))