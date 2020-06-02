import UIKit

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter{$0 != val}
        print(nums)
        return nums.count
    }
}

var numbers = [1,5,2,3,4,5,6,7,8]
let s = Solution()
s.removeElement(&numbers, 5)
