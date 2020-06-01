import UIKit



class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var previousNum = 0
        var index = 0
        for num in nums {
            if num == previousNum {
                nums.remove(at: index)
            } else {
                previousNum = num
                index += 1
            }
            print(nums)
        }
        return nums.count
        
    }
}

let s = Solution()
var nums = [1,1,3,5,7,8,8]
s.removeDuplicates(&nums)
