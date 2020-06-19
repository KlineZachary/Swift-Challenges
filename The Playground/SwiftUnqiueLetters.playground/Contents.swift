//True if all letters are unqiue
//Non fancy solution
func challenge1a(input: String) -> Bool {
    var usedLetters = [Character]()
    for letter in input {
        if usedLetters.contains(letter) {
            return false
        }
        usedLetters.append(letter)
    }
    return true
}

//Fancy Solution
func challenge1b(input: String) -> Bool {
    return Set(input).count == input.count
}
