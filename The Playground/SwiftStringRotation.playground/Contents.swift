//Write a function that accepts two strings, and returns true if one string is rotation of the other,
//taking letter case into account.
import Foundation
func stringRotation(input: String, rotated: String) -> Bool{
    if input.count != rotated.count {return false}
    let combined = input + input
    return combined.contains(rotated)
}
