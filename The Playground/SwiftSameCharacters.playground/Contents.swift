//Write a function that accepts two String parameters, and returns true if they contain the same
//characters in any order taking into account letter case.


//fancy way
func challenge3a(string1: String, string2: String) -> Bool {
    var checkString = string2
    for letter in string1 {
        if let index = checkString.index(of: letter) {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    return checkString.count == 0
}

//fancier way
func challenge3b(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}
