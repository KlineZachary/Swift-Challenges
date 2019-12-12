//import Foundation
func climbStairs(_ n: Int) -> Int {
    var dp = [0,1,2]
    if n < 3 { return dp[n] }
    for i in 3...n{dp.append(dp[i-1] + dp[i-2])}
    return dp[n]
}
print(climbStairs(10))
