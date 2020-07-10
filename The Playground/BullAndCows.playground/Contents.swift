//You are playing the following Bulls and Cows game with your friend: You write down a number and ask your friend to guess what the number is. Each time your friend makes a guess, you provide a hint that indicates how many digits in said guess match your secret number exactly in both digit and position (called "bulls") and how many digits match the secret number but locate in the wrong position (called "cows"). Your friend will use successive guesses and hints to eventually derive the secret number.
//
//Write a function to return a hint according to the secret number and friend's guess, use A to indicate the bulls and B to indicate the cows.
//
//Please note that both secret number and friend's guess may contain duplicate digits.
import Foundation
class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        var numBulls = 0
        var numCows = 0
        var trackNumbers = [Int] (repeating: 0, count: 10)
    
        for i in 0..<secret.count{
            let stringIndex = secret.index(secret.startIndex, offsetBy: i)
            let sValue = Int(String(secret[stringIndex]))!
            let gValue = Int(String(guess[stringIndex]))!

            if sValue == gValue {
                numBulls += 1
            }
            else {
                if trackNumbers[sValue] < 0 {numCows += 1}
                if trackNumbers[gValue] > 0 {numCows += 1}
                trackNumbers[sValue] += 1
                trackNumbers[gValue] -= 1
            }

        
        }
        return "\(numBulls)A\(numCows)B"
    }
}

var output = Solution()
print(output.getHint("1123", "0111"))

