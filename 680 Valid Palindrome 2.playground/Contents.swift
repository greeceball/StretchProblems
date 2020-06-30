import UIKit

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        if s.count <= 1 {
            return true
        }
        let chars = "a"..."z", nums = "0"..."9"
        var stringToCheck = s.lowercased()
        stringToCheck = (stringToCheck.filter({chars.contains(String($0)) || nums.contains(String($0))}))
        stringToCheck = String(stringToCheck.filter({chars.contains(String($0)) || nums.contains(String($0))}))
        let length = stringToCheck.count / 2
        let endIndex = stringToCheck.count - 1


        if stringToCheck == String(stringToCheck.reversed()) {
            return true
        } else {
            for i in 0..<length {
                let char12 = stringToCheck.index
                let char1 = stringToCheck[i]
                let char2Index = endIndex - i
                let char2 = stringToCheck[char2Index]
                print(char1)
                print(char2)
                if char1 != char2 && stringToCheck.count >= 4 {
                    stringToCheck.remove(at: stringToCheck.index(stringToCheck.endIndex, offsetBy: char2Index * -1))
                    if stringToCheck == String(stringToCheck.reversed()) {
                        print(stringToCheck)
                        return true
                    }
                }
                
            }
        }
        print(stringToCheck)
        return false
    }
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        return self[index(startIndex, offsetBy:  offset)]
    }
}

let s = Solution()
s.isPalindrome("abc")
