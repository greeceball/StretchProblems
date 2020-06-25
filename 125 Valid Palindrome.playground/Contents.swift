import UIKit

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = "a"..."z", nums = "0"..."9"
        var stringToCheck = s.lowercased()
        stringToCheck = (stringToCheck.filter({chars.contains(String($0)) || nums.contains(String($0))}))

        if stringToCheck == String(stringToCheck.reversed()) {
            return true
        }

        return false
    }
}

let s = Solution()
s.isPalindrome("A man, a plan, a canal: Panama")
s.isPalindrome("race a car")
s.isPalindrome("abbʼa")
s.isPalindrome("0p")
