import UIKit

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        if word == word.uppercased() || word == word.lowercased() {
            return true
        } else {
            var letterCount = 0
            for char in word {
                if char.isUppercase && letterCount != 0 {
                    return false
                } else {
                    letterCount += 1
                }
            }
        }
        return true
    }
}

let s = Solution()
s.detectCapitalUse("HELLO")
