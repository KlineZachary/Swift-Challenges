func isAlienSorted(_ words: [String], _ order: String) -> Bool {
    if words.count == 0 {return false}
    var charArray = [Character](order)
    for i in 0..<words.count - 1{
        let wordOne = words[i]
        let wordTwo = words[i + 1]
        var wordOneIndex = 0
        let twoLength = wordTwo.count

        for j in 0..<wordOne.count{
            if j < wordTwo.count{
                let index = wordOne.index(wordOne.startIndex,offsetBy: j)
                let oneChar = wordOne[index]
                let twoChar = wordTwo[index]
                if charArray.firstIndex(of: twoChar)! >  charArray.firstIndex(of: oneChar)!{
                    break
                }else if charArray.firstIndex(of: twoChar)! ==  charArray.firstIndex(of: oneChar)!{
                    continue
                }else{
                    return false
                }

            }else {return false}

        }
    }
    return true 
}

print(isAlienSorted( ["hello","leetcode"],"hlabcdefgijkmnopqrstuvwxyz"))