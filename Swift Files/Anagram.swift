func printAnagrams(_ words: [String]){
    var sortedWords : [String] = []
    var anagramList = Set<String>()
    for word in words {sortedWords.append(String(word.lowercased().sorted()))}
    
    for i in 0..<words.count{
        var word = String(words[i].lowercased().sorted())

        for j in i + 1..<sortedWords.count{
            var anotherSorted = sortedWords[j].lowercased()

            if word == anotherSorted{
                anagramList.insert(words[i])
                anagramList.insert(words[j])

                print("\(words[i]) and \(words[j]) are anagrams")
            }
        }
    }
    print("Anagram list \(anagramList)")

}

printAnagrams(["cat","Tac","bleh","aa","Hleb"])