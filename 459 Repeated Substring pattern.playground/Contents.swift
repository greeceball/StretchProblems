import UIKit

class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        if s.count < 2 {
                    return false
                } else {
                    var subString: String = ""
                    var index = 0
            
                    for char in s {
                        if char == s.first && subString.count == 0 {
                                subString = "\(char)"
                        } else if char == s.first &&  {
                            break
                        } else {
                            subString += "\(char)"
                        }
                    }
                    let count = s.components(separatedBy: subString)

                    if count.count >= 2 {
                       for index in count {
                           if index != "" {
                               return false
                            }
                        }
                    }
                }
               return true
    }
}

let s = Solution()
s.repeatedSubstringPattern("abaababaab")
