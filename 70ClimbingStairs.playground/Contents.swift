import UIKit

/*
 You are climbing a stair case. It takes n steps to reach to the top.

 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 Note: Given n will be a positive integer.
 */

class Solution {
    func climbStairs(_ n: Int) -> Int {
        
        var numOfWays = [0,1,2]
        if n < 3 { return numOfWays[n] }
        
        for i in 3...n {
            numOfWays.append(numOfWays[i - 1] + numOfWays[i - 2])
        }
        return numOfWays[n]
        
    }
}

let s = Solution()
s.climbStairs(30)
