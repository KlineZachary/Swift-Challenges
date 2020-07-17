//This one supa easy
class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var output : [String] = []
        for num in 1...n{
            if (num % 3 == 0) && (num % 5 == 0){
                output.append("FizzBuzz")
            }else if (num % 3 == 0){
                output.append("Fizz")
            }else if (num % 5 == 0){
                output.append("Buzz")
            }else{
                output.append("\(num)")
            }
        }
        return output
    }
}
print(Solution().fizzBuzz(15))