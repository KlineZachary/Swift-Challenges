//Write a function that accepts a String as its only parameter, and returns true if the string reads
//the same when reversed, ignoring case.

func isPalindrome(input: String) -> Bool{
    let lowercased = input.lowercased()
    return lowercased == String(lowercased.reversed())
}
