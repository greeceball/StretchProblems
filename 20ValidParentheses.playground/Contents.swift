import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        var inputArray: [String] = []
        let rule: [String] = ["(",")","[","]","{","}"]
        var stack = [Character]()
        
        for string in s {
            
            inputArray.append(String(string))
        }
        
        
        for char in inputArray {
            if rule.index(of: char) {
                stack.append(char)
            } else {
                
            }
        }
        
        
    }
}
