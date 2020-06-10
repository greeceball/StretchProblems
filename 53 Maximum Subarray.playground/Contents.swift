import UIKit

/*
 Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
 Example:

 Input: [-2,1,-3,4,-1,2,1,-5,4],
 Output: 6
 Explanation: [4,-1,2,1] has the largest sum = 6.
 */

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var best = nums[0]
        var current = nums[0]
        
        for i in 1..<nums.count {
            current = max(current + nums[i], nums[i])
            best = max(current, best)
        }
        return best
    }
}

let s = Solution()
s.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
