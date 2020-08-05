import UIKit

/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numIndex = 0
        var numCheckedAgainstNumIndex = 0
        
        if numIndex == nums.count {
            return [0,0]
        }
        
        for i in 0..<nums.count {
            
            for j in 1..<nums.count {
                numCheckedAgainstNumIndex += 1

                if nums[i] + nums[j] == target {
                return [numIndex, numCheckedAgainstNumIndex]
                }
                
            }
            numIndex += 1
            numCheckedAgainstNumIndex = 0
        }
        return [0,0]
    }
}

let s = Solution()
s.twoSum([1,3,4,6,8,9], 11)
