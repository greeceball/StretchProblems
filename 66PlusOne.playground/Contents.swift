import UIKit

/*
 Given a non-empty array of digits representing a non-negative integer, plus one to the integer.

 The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.

 You may assume the integer does not contain any leading zero, except the number 0 itself.
 */

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var ints = digits
        for digit in (0..<ints.count).reversed() {
            if ints[digit] != 9 {
                ints[digit] += 1
                return ints
            } else {
                ints[digit] = 0
                if ints.first == 0 {
                   ints.insert(1, at: 0)
                }
            }
        }
        return ints
    }
}

let s = Solution()
print(s.plusOne([7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6]))
print(s.plusOne([9]))
